#
# Be sure to run `pod lib lint EbmSKMaps.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EbmSKMaps'
  s.version          = '3.0.6'
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
  s.source           = { :http => 'https://dl.dropboxusercontent.com/s/4qbfezp7q7oxwk5/SKMaps-3.0.6.zip?dl=0' }
  s.social_media_url = 'https://twitter.com/minuscorp'

  s.platform = :ios
  s.ios.deployment_target = '9.0'

  s.requires_arc = true
  s.preserve_paths = 'SKMaps.framework'
  s.resources = 'SKMaps.bundle', 'SKAdvisorResources.bundle'
  s.xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC',
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/EbmSKMaps/"',
      'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) @executable_path/Frameworks @loader_path/Frameworks'
  }
  s.source_files = 'SKMaps.framework/Headers/*.h'
  s.header_dir = 'EbmSKMaps'
  s.frameworks = 'SKMaps', 'CoreLocation', 'OpenGLES', 'QuartzCore', 'SystemConfiguration', 'CoreMotion', 'AVFoundation'
  s.libraries = 'z', 'stdc++.6', 'c++'
  s.vendored_frameworks = 'SKMaps.framework'
end
