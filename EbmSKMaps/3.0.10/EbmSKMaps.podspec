#
# Be sure to run `pod lib lint EbmSKMaps.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EbmSKMaps'
  s.version          = '3.0.10'
  s.summary          = 'A short description of EbmSKMaps.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/minuscorp/EbmSKMaps'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'minuscorp' => 'jrevuelta@usal.es' }
  s.source           = { :http => 'https://dl.dropboxusercontent.com/s/buuvyk9iqsw9ddc/SKMaps-3.0.10.zip?dl=0' }
  s.social_media_url = 'https://twitter.com/minuscorp'

  s.platform = :ios
  s.ios.deployment_target = '9.0'

  s.requires_arc = true
  s.preserve_paths = 'SKMaps.framework'
  s.default_subspec = 'BlueTheme'

  s.subspec 'Core' do |ss|
    ss.requires_arc = true
    ss.preserve_paths = 'SKMaps.framework'
    ss.xcconfig = {
        'OTHER_LDFLAGS' => '-ObjC',
        'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/EbmSKMaps/Core/"',
        'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) @executable_path/Frameworks @loader_path/Frameworks'
    }
    ss.source_files = 'SKMaps.framework/Headers/*.h'
    ss.header_dir = 'EbmSKMaps'
    ss.frameworks = 'SKMaps', 'CoreLocation', 'OpenGLES', 'QuartzCore', 'SystemConfiguration', 'CoreMotion', 'AVFoundation'
    ss.libraries = 'z', 'stdc++.6', 'c++'
    ss.vendored_frameworks = 'SKMaps.framework'
  end

  s.subspec 'BlueTheme' do |ss|
    ss.resources = 'BlueTheme/SKMaps.bundle', 'SKAdvisorResources.bundle'
    ss.dependency 'EbmSKMaps/Core'
  end

  s.subspec 'YellowTheme' do |ss|
    ss.resources = 'YellowTheme/SKMaps.bundle', 'SKAdvisorResources.bundle'
    ss.dependency 'EbmSKMaps/Core'
  end
end
