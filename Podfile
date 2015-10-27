source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
workspace 'LLARingSpinnerView'

target 'LLARingSpinnerView' do
  pod "LLARingSpinnerView", :path => "LLARingSpinnerView.podspec"
  xcodeproj 'LLARingSpinnerView.xcodeproj'
end

target 'Tests' do
  use_frameworks!
  pod "LLARingSpinnerView", :path => "LLARingSpinnerView.podspec"
  pod 'Specta', :git => "https://github.com/specta/specta"
  pod 'Expecta'
  pod 'OCMock'
  pod 'Expecta+Snapshots'
  xcodeproj 'LLARingSpinnerView.xcodeproj'
end
