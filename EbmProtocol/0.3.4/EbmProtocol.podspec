#
# Be sure to run `pod lib lint EbmProtocol.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EbmProtocol'
  s.version          = '0.3.4'
  s.summary          = 'Ebikemotion BLE Product Family Protocol for iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The aim of the library is to follow the DRY as much as possible. Several applications depends on the
protocol and with this way the update of all of them is easy.
                       DESC

  s.homepage         = 'https://github.com/minuscorp/EbmProtocol'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'minuscorp' => 'jrevuelta@usal.es' }
  s.source           = { :git => 'https://github.com/minuscorp/EbmProtocol.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/minuscorp'

  s.platform = :ios

  s.ios.deployment_target = '9.0'

  s.default_subspec = 'Protocol'

  s.subspec 'ProtocolServices' do |ss|
     ss.source_files = 'EbmProtocol/Classes/**/*'
     ss.ios.frameworks = 'Foundation', 'CoreBluetooth'
     ss.dependency 'EbmStringExtensions', '~> 0.1.0'
     ss.dependency 'RxSwift', '~> 3.0'
     ss.dependency 'RxCocoa', '~> 3.0'
  end

  s.subspec 'Protocol' do |ss|
     ss.source_files = 'EbmProtocol/Classes/**/*'
     ss.exclude_files = 'EbmProtocol/Classes/EBIKEService.swift', 'EbmProtocol/Classes/EBIKEValues.swift'
     ss.dependency 'EbmStringExtensions', '~> 0.1.0'
  end

end
