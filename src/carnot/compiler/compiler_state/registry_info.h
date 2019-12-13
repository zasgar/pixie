#pragma once

#include <map>
#include <memory>
#include <string>
#include <utility>
#include <vector>

#include <absl/container/flat_hash_set.h>
#include <absl/strings/str_format.h>
#include "src/carnot/udfspb/udfs.pb.h"
#include "src/common/base/base.h"
#include "src/shared/types/proto/types.pb.h"

namespace pl {
namespace carnot {
namespace compiler {

/**
 * RegistryKey is the class used to uniquely refer to UDFs/UDAs in the registry.
 * A UDF may be overloaded on exec arguments but nothing else.
 */
class RegistryKey {
 public:
  /**
   * RegistryKey constructor.
   *
   * @param name the name of the UDF/UDA.
   * @param registry_arg_types the types used for registry resolution (except FunctionContext).
   */
  RegistryKey(std::string name, const std::vector<types::DataType> registry_arg_types)
      : name_(std::move(name)), registry_arg_types_(registry_arg_types) {}

  /**
   * Access name of the UDF/UDA.
   * @return The name of the udf/uda.
   */
  const std::string& name() const { return name_; }

  const std::vector<types::DataType>& registry_arg_types() { return registry_arg_types_; }

  /**
   * LessThan operator overload so we can use this in maps.
   * @param lhs is the other RegistryKey.
   * @return a stable less than compare.
   */
  bool operator<(const RegistryKey& lhs) const {
    if (name_ == lhs.name_) {
      return registry_arg_types_ < lhs.registry_arg_types_;
    }
    return name_ < lhs.name_;
  }

 protected:
  std::string name_;
  std::vector<types::DataType> registry_arg_types_;
};

class RegistryInfo {
 public:
  Status Init(udfspb::UDFInfo info);
  StatusOr<types::DataType> GetUDA(std::string name, std::vector<types::DataType> update_arg_types);
  StatusOr<types::DataType> GetUDF(std::string name, std::vector<types::DataType> exec_arg_types);

  const absl::flat_hash_set<std::string>& func_names() const { return func_names_; }

 protected:
  std::map<RegistryKey, types::DataType> udf_map_;
  std::map<RegistryKey, types::DataType> uda_map_;
  // Union of udf and uda names.
  absl::flat_hash_set<std::string> func_names_;
};

}  // namespace compiler
}  // namespace carnot
}  // namespace pl
