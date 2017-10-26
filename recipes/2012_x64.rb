#
# Cookbook Name:: ms-cpp-redistributable
# Recipe:: 2012_x86
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
# Visual C++ Redistributable for Visual Studio 2012 Update 3
url = "http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU3/vcredist_x64.exe"
app_str = "Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610"

exe_file = File.join(Chef::Config[:file_cache_path],"vcredist_2012_x64.exe")
remote_file exe_file do
  source url
end

package app_str do
  source exe_file
  action :install
  installer_type :custom
  options "/install /quiet /norestart"
  checksum "9045134dc85230ee2d3d1d6be0ad3489019af643128d73ff67f95371ceb9b963"
end
