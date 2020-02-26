#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include "src/stirling/http/http_types.h"

namespace pl {
namespace stirling {
namespace http {

TEST(HTTPHeadersMap, CaseInsensitivity) {
  const HeadersMap kHTTPHeaders = {
      {"Content-Type", "application/json"},
      {"Transfer-Encoding", "chunked"},
  };

  // Check that we can access the key regardless of the case of the key (content-type).
  {
    auto http_headers_iter = kHTTPHeaders.find("content-type");
    ASSERT_NE(http_headers_iter, kHTTPHeaders.end());
    EXPECT_EQ(http_headers_iter->second, "application/json");
  }

  {
    auto http_headers_iter = kHTTPHeaders.find("Content-Type");
    ASSERT_NE(http_headers_iter, kHTTPHeaders.end());
    EXPECT_EQ(http_headers_iter->second, "application/json");
  }
}

}  // namespace http
}  // namespace stirling
}  // namespace pl
