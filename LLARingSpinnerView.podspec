Pod::Spec.new do |spec|
  spec.name = 'LLARingSpinnerView'
  spec.version = '0.1.0'
  spec.authors = { 'Lukas Lipka' => 'lukaslipka@gmail.com' }
  spec.homepage = 'https://github.com/lipka/LLARingSpinnerView'
  spec.summary = 'An animated ring spinner view for displaying indeterminate progress.'
  spec.source = { :git => 'https://github.com/lipka/LLARingSpinnerView.git', :tag => "#{spec.version}" }
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.platform = :ios
  spec.requires_arc = true
  spec.frameworks = 'UIKit', 'CoreGraphics'
  spec.source_files = 'LLARingSpinnerView'
end
