@version = "1.1"

Pod::Spec.new do |s|
  s.name             = "BCSegmentedControl"
  s.version          = @version
  s.summary          = "An easy to use, customizable replacement for UISegmentedControl & UISwitch."
  s.description      = <<-DESC
  BetterSegmentedControl is an easy to use, customizable replacement for UISegmentedControl and UISwitch written in Swift.
  DESC
  s.homepage         = "https://github.com/battleent/BetterSegmentedControl"
  s.license          = 'MIT'
  s.author           = { "George Marmaridis" => "gmarmas@gmail.com" }
  s.source           = { :git => "https://github.com/battleent/BetterSegmentedControl.git", :tag => "#{s.version}" }
  s.social_media_url = 'https://twitter.com/gmarmas'
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
  s.frameworks = 'UIKit'
  s.dependency "RxSwift", ">= 4.0.0"
  s.dependency "RxCocoa", ">= 4.0.0"
end
