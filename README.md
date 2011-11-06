A CKEditor plugin for ColdMVC

Currently uses CKEditor version 3.5.3

http://ckeditor.com/

http://github.com/tonynelson19/ColdMVC

Usage:

Drop the plugin inside your _/plugins_ folder.

Update your app's _/config/plugins.cfm_.

	<cfset add("ckeditor") />

Inside your views:

	<c:ckeditor name="foo" value="bar" />

Copyright 2010 Tony Nelson

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.