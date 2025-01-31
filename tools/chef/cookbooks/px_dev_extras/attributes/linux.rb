# Copyright 2018- The Pixie Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

if ! platform_family?('debian')
  return
end

# Resources created by chef on linux are owned by root:root
default['owner'] = 'root'
default['group'] = 'root'

default['docker-buildx']['download_path'] =
  'https://github.com/docker/buildx/releases/download/v0.10.4/buildx-v0.10.4.linux-amd64'
default['docker-buildx']['sha256'] =
  'dbe68cdc537d0150fc83e3f30974cd0ca11c179dafbf27f32d6f063be26e869b'

default['faq']['download_path'] =
  'https://github.com/jzelinskie/faq/releases/download/0.0.7/faq-linux-amd64'
default['faq']['sha256'] =
  '6c9234d0b2b024bf0e7c845fc092339b51b94e5addeee9612a7219cfd2a7b731'

default['gh']['download_path'] =
  'https://github.com/cli/cli/releases/download/v2.12.1/gh_2.12.1_linux_amd64.tar.gz'
default['gh']['sha256'] =
  '359ff9d759b67e174214098144a530a8afc4b0c9d738cd07c83ac84390cdc988'

default['helm']['download_path'] =
  'https://get.helm.sh/helm-v3.5.2-linux-amd64.tar.gz'
default['helm']['sha256'] =
  '01b317c506f8b6ad60b11b1dc3f093276bb703281cb1ae01132752253ec706a2'

default['kubectl']['download_path'] =
  'https://storage.googleapis.com/kubernetes-release/release/v1.26.0/bin/linux/amd64/kubectl'
default['kubectl']['sha256'] =
  'b6769d8ac6a0ed0f13b307d289dc092ad86180b08f5b5044af152808c04950ae'

default['kustomize']['download_path'] =
  'https://github.com/kubernetes-sigs/kustomize/releases/download/v3.2.0/kustomize_3.2.0_linux_amd64'
default['kustomize']['sha256'] =
  '7db89e32575d81393d5d84f0dc6cbe444457e61ce71af06c6e6b7b6718299c22'

default['lego']['download_path'] =
  'https://github.com/go-acme/lego/releases/download/v4.5.3/lego_v4.5.3_linux_amd64.tar.gz'
default['lego']['sha256'] =
  'd6a6dbf82ae9a1a7f9fbc8d85c224617a17337afa4284aaca6b0556a7347609d'

default['minikube']['download_path'] =
  'https://github.com/kubernetes/minikube/releases/download/v1.24.0/minikube-linux-amd64'
default['minikube']['sha256'] =
  '3bc218476cf205acf11b078d45210a4882e136d24a3cbb7d8d645408e423b8fe'

default['opm']['download_path'] =
  'https://github.com/operator-framework/operator-registry/releases/download/v1.26.4/linux-amd64-opm'
default['opm']['sha256'] =
  'cf94e9dbd58c338e1eed03ca50af847d24724b99b40980812abbe540e8c7ff8e'

default['packer']['download_path'] =
  'https://releases.hashicorp.com/packer/1.7.8/packer_1.7.8_linux_amd64.zip'
default['packer']['sha256'] =
  '8a94b84542d21b8785847f4cccc8a6da4c7be5e16d4b1a2d0a5f7ec5532faec0'

default['skaffold']['download_path'] =
  'https://storage.googleapis.com/skaffold/releases/v2.0.4/skaffold-linux-amd64'
default['skaffold']['sha256'] =
  'f1c54245b97073f39b209dd4b769802701c9901ceaa95774e7507d95bbd1d4c0'

default['sops']['download_path'] =
  'https://github.com/mozilla/sops/releases/download/3.3.1/sops-3.3.1.linux'
default['sops']['sha256'] =
  '6eacdd01b68fd140eb71bbca233bea897cccb75dbf9e00a02e648b2f9a8a6939'

default['yq']['download_path'] =
  'https://github.com/mikefarah/yq/releases/download/v4.30.8/yq_linux_amd64'
default['yq']['sha256'] =
  '6c911103e0dcc54e2ba07e767d2d62bcfc77452b39ebaee45b1c46f062f4fd26'
