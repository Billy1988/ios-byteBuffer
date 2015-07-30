#
# Be sure to run `pod lib lint ios-byteBuffer.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ios-byteBuffer"
  s.version          = "0.1.0"
  s.summary          = "A class re-write in objective-c"
  s.homepage         = "https://github.com/Billy1988/ios-byteBuffer"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Billy Lee" => "lchb1988@gmail.com" }
  s.source           = { :git => "https://github.com/Billy1988/ios-byteBuffer.git", :tag => s.version.to_s }

  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
end
