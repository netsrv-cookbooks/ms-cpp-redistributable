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
url = "http://download.microsoft.com/download/5/B/C/5BC5DBB3-652D-4DCE-B14A-475AB85EEF6E/vcredist_x86.exe"
app_str = "Microsoft Visual C++ 2010  x86 Redistributable - 10.0.30319"

exe_file = File.join(Chef::Config[:file_cache_path],"vcredist_2010_x86.exe")
remote_file exe_file do
  source url
end

windows_package app_str do
  source exe_file
  action :install
  installer_type :custom
  options "/q"
  checksum "8162b2d665ca52884507ede19549e99939ce4ea4a638c537fa653539819138c8"
end
