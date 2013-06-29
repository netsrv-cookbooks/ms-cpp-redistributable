#
# Cookbook Name:: ms-cpp-redistributable
# Recipe:: 2005_x86
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

# Microsoft Visual C++ 2005 Service Pack 1 Redistributable Package MFC Security Update
# Version 8.0.61001
url = "http://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE"
app_str = "Microsoft Visual C++ 2005 Redistributable"

windows_package app_str do
  source url
  action :install
  installer_type :custom
  options "/q"
  checksum "4ee4da0fe62d5fa1b5e80c6e6d88a4a2f8b3b140c35da51053d0d7b72a381d29"
end
