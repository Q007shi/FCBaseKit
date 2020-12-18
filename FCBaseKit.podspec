#
# Be sure to run `pod lib lint FCBaseKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FCBaseKit'
  s.version          = '0.0.1'
  s.summary          = 'A short description of FCBaseKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Q007shi/FCBaseKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Q007' => '617@qq.com' }
  s.source           = { :git => 'https://github.com/Q007shi/FCBaseKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  #公开头文件(组件内外都可以引用)
  s.public_header_files = 'FCBaseKit/Classes/Other/FCBaseKit.h'
  #私有头文件(组件外不能引用)
#  s.private_header_files = 'FCBaseKit/Classes/Other/FCBaseKitHeader.h'
  s.prefix_header_contents = '#import "FCBaseKitHeader.h"' #在 **-prefix.pch 导入指定文件，且设置为组建内私有
#  s.prefix_header_file = false 在组件中不生成 **-prefix.pch

  s.source_files = 'FCBaseKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FCBaseKit' => ['FCBaseKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3
  
end
