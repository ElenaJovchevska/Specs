Pod::Spec.new do |s|
  s.name     = 'AppShell'
  s.version = '1.0.0'
  s.summary  = 'App shell for the Mobiliar Test platform project'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'The App shell will be concerned with presenting the user with coherent navigation within the app and its modules, handle authentication, hanlde inter-app-module communication'
  s.platform = :ios, '7.0'
  s.source = { :git => 'https://mobmarkettest.extranet.netcetera.biz/git/mob-012-2-framework-ios', :tag => '1.0.0' }

  s.libraries = 'z', 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
                 'OTHER_LDFLAGS' => '-framework Security, -framework CFNetwork, -framework SystemConfiguration, -lsqlite3.0' }
  s.requires_arc = true

  s.prefix_header_file = "appshell/src/main/objc/Prefix.pch"
  s.source_files = 'appshell/src/main/**/*.{h,m, mm, c}'
  s.dependency 'GirdersiOS/All'

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }
end
