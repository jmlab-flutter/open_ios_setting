#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint open_ios_setting.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'open_ios_setting'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin for opening iOS system settings pages.'
  s.description      = <<-DESC
A Flutter plugin for opening iOS system settings pages. Supports opening the Settings app home page.
                       DESC
  s.homepage         = 'https://github.com/jmlab-flutter/open_ios_setting'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'jmlab-flutter' => 'jmlab-flutter@users.noreply.github.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'open_ios_setting_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
