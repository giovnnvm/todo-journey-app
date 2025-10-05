platform :ios, '15.0'
use_modular_headers!
use_frameworks! :linkage => :dynamic
inhibit_all_warnings!

project 'TodoJourneyApp.xcodeproj'

install! 'cocoapods',
  :clean => true,
  :warn_for_multiple_pod_sources => false,
  :deterministic_uuids => false,
  :share_schemes_for_development_pods => false,
  :warn_for_unused_master_specs_repo => false

$firebaseVersion = '11.7.0'

def firebase_pods
  pod 'Firebase/Analytics',   $firebaseVersion
  pod 'Firebase/Crashlytics', $firebaseVersion
  pod 'Firebase/Auth',        $firebaseVersion
end

target 'TodoJourneyApp' do
  firebase_pods
end

target 'TodoJourneyAppTests' do
  inherit! :search_paths
end

target 'TodoJourneyAppUITests' do
  inherit! :search_paths
end

post_install do |installer|
  installer.pods_project.targets.each do |t|
    t.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
      config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = ''
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
    end
  end
end
