#
# Be sure to run `pod lib lint EbmCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EbmCore'
  s.version          = '0.1.25'
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

    ss.dependency 'SwiftyJSON', '~> 3.1'
    ss.dependency 'RxSwift', '~> 3.4'
    ss.dependency 'RxCocoa', '~> 3.4'
    ss.dependency 'RxAlamofire', '~> 3.0'
    ss.dependency 'SDWebImage', '~> 4.0'
    ss.frameworks = 'CoreTelephony'
    ss.dependency 'EbmProtocol/Protocol', '~> 0.3'
    ss.dependency 'ObjectMapper', '~> 2.1'
    ss.dependency 'Dotzu', '~> 1.7'

  end

  s.subspec 'Models' do |ss|

    ss.dependency 'SwiftyJSON', '~> 3.1'
    ss.dependency 'RxSwift', '~> 3.4'
    ss.dependency 'EbmCore/CouchbaseLite'

    ss.source_files = 'EbmCore/Classes/Models/**/*', 'EbmCore/Classes/Common/*.swift'
    ss.ios.xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => 'MODELS=1',
      'OTHER_SWIFT_FLAGS' => '"-D" "MODELS"',
      'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)'
    }
    ss.frameworks = 'CouchbaseLite'
  end

  s.subspec 'CouchbaseLite' do |ss|
    ss.source_files = 'CouchbaseLite.framework/Headers/*.h', 'EbmCore/Headers/*.h'
    ss.public_header_files = ['CouchbaseLite.framework/Headers/*.h', 'EbmCore/Headers/*.h']
    ss.frameworks = 'CFNetwork', 'Security', 'SystemConfiguration', 'JavaScriptCore'
    ss.libraries = 'z', 'c++', 'sqlite3'
    ss.vendored_frameworks = 'CouchbaseLite.framework'
    ss.xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC',
    }
    ss.preserve_paths = 'CouchbaseLite.framework'
  end
end
