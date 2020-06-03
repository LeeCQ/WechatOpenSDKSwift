#
# Be sure to run `pod lib lint WechatOpenSDKSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WechatOpenSDKSwift'
  s.version          = '0.1.0'
  s.summary          = 'WechatOpenSDKSwift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  WechatOpenSDK swift version
                       DESC

  s.homepage         = 'https://github.com/LeeCQ'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '李昌庆' => 'hx614614@163.com' }
  s.source           = { :git => 'https://github.com/LeeCQ/WechatOpenSDKSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'WechatOpenSDKSwift/Classes/**/*'
  
  # s.resource_bundles = {
  #   'WechatOpenSDKSwift' => ['WechatOpenSDKSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
#   s.frameworks = 'UIKit'
#   s.dependency 'WechatOpenSDK'
  s.subspec 'WechatOpenSDK' do |ss|
     ss.source_files = 'WechatOpenSDKSwift/Vendors/OpenSDK1.8.6.2/**.h'
     ss.public_header_files = 'WechatOpenSDKSwift/Vendors/OpenSDK1.8.6.2/**.h'

     ss.frameworks   = 'WebKit', 'CFNetwork', 'SystemConfiguration', 'Security', 'CoreTelephony','Foundation'
     ss.libraries    = 'sqlite3.0', 'z', 'c++'

#     ss.vendored_frameworks =  'WechatOpenSDKSwift/Vendors/*.framework'
     ss.vendored_libraries = 'WechatOpenSDKSwift/Vendors/OpenSDK1.8.6.2/*.a'

#     ss.preserve_paths = 'WechatOpenSDKSwift/Vendors/*.framework'
     ss.pod_target_xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/WechatOpenSDKSwift/Vendors/' }
   end

end
