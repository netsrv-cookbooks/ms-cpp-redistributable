#
# Cookbook Name:: ms-cpp-redistributable
# Recipe:: 2010_x64
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
url = "http://download.microsoft.com/download/3/2/2/3224B87F-CFA0-4E70-BDA3-3DE650EFEBA5/vcredist_x64.exe"
app_str = "Microsoft Visual C++ 2010  x64 Redistributable - 10.0.30319"

exe_file = File.join(Chef::Config[:file_cache_path],"vcredist_2010_x64.exe")
remote_file exe_file do
  source url
end

package app_str do
  source exe_file
  action :install
  installer_type :custom
  options "/q"
  checksum "b06546ddc8ca1e3d532f3f2593e88a6f49e81b66a9c2051d58508cc97b6a2023"
end



