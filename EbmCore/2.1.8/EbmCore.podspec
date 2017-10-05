#
# Be sure to run `pod lib lint EbmCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EbmCore'
  s.version          = '2.1.8'
  s.summary          = 'A short description of EbmCore.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/minuscorp/EbmCore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'minuscorp' => 'jrevuelta@usal.es' }
  s.source           = { :git => 'https://github.com/minuscorp/EbmCore.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/minuscorp'

  s.platform = :ios
  s.ios.deployment_target = '9.0'

  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|

    ss.dependency 'EbmCore/Models'
    ss.dependency 'EbmCore/WebServices'

  end

  s.subspec 'WebServices' do |ss|

    ss.source_files = 'EbmCore/Classes/WebServices/**/*', 'EbmCore/Classes/Extensions/*.swift', 'EbmCore/Classes/Common/*.swift'
    ss.ios.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WEBSERVICES=1',
                        'OTHER_SWIFT_FLAGS' => '"-D" "WEBSERVICES"' }

    ss.frameworks = 'CoreTelephony'
    ss.dependency 'SwiftyJSON'
    ss.dependency 'RxSwift', '~> 3.0'
    ss.dependency 'RxCocoa'
    ss.dependency 'Moya', '~> 8.0'
    ss.dependency 'Moya/RxSwift'
    ss.dependency 'SDWebImage', '~> 4.0'
    ss.dependency 'EbmProtocol/Protocol', '~> 1.0'
    ss.dependency 'ObjectMapper', '~> 2.2'

  end

  s.subspec 'Models' do |ss|

    ss.dependency 'EbmEasyRealm'
    ss.dependency 'SwiftyJSON'
    ss.dependency 'RxSwift', '~> 3.0'
    ss.dependency 'RealmSwift', '~> 2.0'
    ss.dependency 'ObjectMapper', '~> 2.2'
    ss.dependency 'ObjectMapper+Realm', '~> 0.3'

    ss.source_files = 'EbmCore/Classes/Models/**/*', 'EbmCore/Classes/Common/*.swift'
    ss.ios.xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => 'MODELS=1',
      'OTHER_SWIFT_FLAGS' => '"-D" "MODELS"',
    }

  end

end
