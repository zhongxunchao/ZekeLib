#
# Be sure to run `pod lib lint ZekeLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZekeLib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ZekeLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhongxunchao/ZekeLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhongxunchao' => '374884069@qq.com' }
  s.source           = { :git => 'https://github.com/zhongxunchao/ZekeLib.git', :tag => '0.1.0' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ZekeLib/Classes/**/*'
  s.platform     = :ios, '10.0'
  s.requires_arc = true
  s.source_files = 'ZekeLib/Classes/**/*.{h,m}'
  
#   s.resource_bundles = {
#     'ZekeLib' => ['ZekeLib/Assets/*.png']
#   }

   s.public_header_files = 'ZekeLib/Classes/**/*.h'
   s.frameworks = 'MobileCoreServices', 'CFNetwork', 'CoreGraphics'
   s.dependency 'YSASIHTTPRequest', '~> 2.0.1'
end
