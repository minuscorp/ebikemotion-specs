#
# Be sure to run `pod lib lint EbmSKUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EbmSKUtils'
  s.version          = '0.1.0'
  s.summary          = 'A short description of EbmSKUtils.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/minuscorp/EbmSKUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'minuscorp' => 'jrevuelta@usal.es' }
  s.source           = { :git => 'https://github.com/minuscorp/EbmSKUtils.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/minuscorp'

  s.platform = :ios
  s.ios.deployment_target = '9.0'

  s.source_files = 'EbmSKUtils/Classes/**/*'

  s.frameworks = 'AVFoundation', 'Foundation', 'CoreLocation'
  
  s.dependency 'EbmTTSService'
  s.dependency 'EbmProtocol'
  s.dependency 'EbmSDKTools'
  s.dependency 'EbmSKMaps'
  s.dependency 'EbmReachabilityService'
  s.dependency 'EbmGPSService'
  s.dependency 'RxSwift'
  s.dependency 'RxCocoa'
  s.dependency 'RxOptional'
  s.dependency 'RxAlamofire'
  s.dependency 'Alamofire'
  s.dependency 'MBProgressHUD'
  s.dependency 'Solar'
  s.dependency 'PureLayout'
  s.dependency 'CryptoSwift'
  s.dependency 'SwiftyUserDefaults'

  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '\"$(PODS_ROOT)/EbmSKMaps/Core/**\"'
  }

end
