#
# Be sure to run `pod lib lint EbmSKMaps.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EbmSKMaps'
  s.version          = '3.0.25'
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
  s.source           = { :http => 'https://dl.dropboxusercontent.com/s/r8tf4bdm6ah0ic7/SKMaps-3.0.22.zip?dl=0' }
  s.social_media_url = 'https://twitter.com/minuscorp'

  s.platform = :ios
  s.ios.deployment_target = '9.0'

  s.requires_arc = true
  s.preserve_paths = 'SKMaps.framework'
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.requires_arc = true
    ss.preserve_paths = 'SKMaps.framework'
    ss.xcconfig = {
        'OTHER_LDFLAGS' => '-ObjC',
        'ARCHS' => 'i386 x64_86 armv7 arm64',
        'VALID_ARCHs' => 'i386 x64_86 armv7 arm64'
        #'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/EbmSKMaps/"',
        #'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) @executable_path/Frameworks @loader_path/Frameworks'
    }
    ss.source_files = 'SKMaps.framework/Headers/*.h'
    ss.header_dir = 'EbmSKMaps'
    ss.frameworks = 'SKMaps', 'CoreLocation', 'OpenGLES', 'QuartzCore', 'SystemConfiguration', 'CoreMotion', 'AVFoundation'
    ss.libraries = 'z', 'stdc++.6', 'c++'
    ss.vendored_frameworks = 'SKMaps.framework'
    ss.resources = 'SKAdvisorResources.bundle'
  end

  s.subspec 'BlueTheme' do |ss|
    ss.resource_bundles = {
      'SKMaps' => ['BlueTheme/**']
    }
    ss.exclude_files = 'YellowTheme/**'
    ss.dependency 'EbmSKMaps/Core'
  end

  s.subspec 'YellowTheme' do |ss|
    ss.resource_bundles = {
      'SKMaps' => ['YellowTheme/**']
    }
    ss.exclude_files = 'BlueTheme/**'
    ss.dependency 'EbmSKMaps/Core'
  end
end
