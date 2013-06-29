ms-cpp-redistributable
======================
Installs runtime components of Microsoft Visual C++ Libraries required to run applications developed with Microsoft
Visual C++.

Packages are downloaded directly from the Microsoft download site.

Usage
-----
In your recipe add something similar to:

    include_recipe "ms-cpp-redistributable::2005_x86"

Recipes
-------
* 2005 x86 (Microsoft Visual C++ 2005 Service Pack 1 Redistributable Package MFC Security Update, 8.0.61001)
* 2008_x86 (Microsoft Visual C++ 2008 SP1 Redistributable Package (x86), 9.0.30729.17)
* 2008_x64 (Microsoft Visual C++ 2008 SP1 Redistributable Package (x64), 9.0.30729.17)
* 2012_x86 (Visual C++ Redistributable for Visual Studio 2012 Update 3, 11.0.60610)
* 2012_x64 (Visual C++ Redistributable for Visual Studio 2012 Update 3, 11.0.60610)

License
-------
    Copyright 2013, NetSrv Consulting Ltd.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

Authors
-------
* Colin Woodcock (<cwoodcock@netsrv-consulting.com>)
