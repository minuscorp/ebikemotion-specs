#
# Be sure to run `pod lib lint EbmActivitySynchronizer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EbmActivitySynchronizer'
  s.version          = '0.1.1'
  s.summary          = 'A short description of EbmActivitySynchronizer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/minuscorp/EbmActivitySynchronizer'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'minuscorp' => 'jrevuelta@usal.es' }
  s.source           = { :git => 'https://github.com/minuscorp/EbmActivitySynchronizer.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/minuscorp'

  s.ios.deployment_target = '9.0'

  s.source_files = 'EbmActivitySynchronizer/Classes/**/*'

  s.dependency 'EbmCore', '>= 2.1.1'
  s.dependency 'EbmEasyRealm'
  s.dependency 'RxRealm'
end
