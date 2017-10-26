#
# Cookbook Name:: ms-cpp-redistributable
# Recipe:: 2008_x86
#
# Copyright 2013, NetSrv Consulting Ltd.
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
url = "http://download.microsoft.com/download/2/d/6/2d61c766-107b-409d-8fba-c39e61ca08e8/vcredist_x64.exe"
app_str = "Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.17"

exe_file = File.join(Chef::Config[:file_cache_path],"vcredist_2008_x64.exe")
remote_file exe_file do
  source url
end

package app_str do
  source exe_file
  action :install
  installer_type :custom
  options "/q"
  checksum "55bf99ad3f063165c3ee1626787b5d4c2b65b5001fef79dd58c3490369ed282f"
end



