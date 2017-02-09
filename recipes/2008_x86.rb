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
url = "http://download.microsoft.com/download/d/d/9/dd9a82d0-52ef-40db-8dab-795376989c03/vcredist_x86.exe"
app_str = "Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17"

exe_file = File.join(Chef::Config[:file_cache_path],"vcredist_2008_x86.exe")
remote_file exe_file do
  source url
end

package app_str do
  source exe_file
  action :install
  installer_type :custom
  options "/q"
  checksum "41f45a46ee56626ff2699d525bb56a3bb4718c5ca5f4fb5b3b38add64584026b"
end
