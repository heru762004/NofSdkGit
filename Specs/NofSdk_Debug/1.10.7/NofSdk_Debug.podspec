#
#  Be sure to run `pod spec lint ENETSLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "NofSdk_Debug"
  s.version      = "1.10.7"
  s.summary      = "NofSdk library to integrate with NetsClick merchant"
  s.description  = "NofSdk library to integrate with NetsClick merchant"
  s.homepage     = "https://api-developer.nets.com.sg/"
  s.license      = "MIT"
  #s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "heru" => "heruprasetia@nets.com.sg" }
  s.source       = { :http => 'https://samplenof.firebaseapp.com/pod/1.10.7/nofsdk.debug.zip' }
  s.subspec 'NETS' do |nets|
    nets.vendored_frameworks  = "nofsdk.framework"
    nets.resources    = "Resources/NETS/**"
  end
  s.subspec 'SPM' do |spm|
    spm.vendored_frameworks  = "nofsdk.framework"
    spm.resources    = "Resources/SPM/**"
  end
  #s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
