Pod::Spec.new do |s|
  s.name         = "DeviceIdentificator"
  s.version      = "1.0.0"
  s.summary      = "UIDeviceExtension to fetch current device info such commercial name (iPhone X instead of iPhone10,3)."
  s.description  = <<-DESC
  UIDeviceExtension written in Swift to fetch current device info such commercial name (iPhone X instead of iPhone10,3).
  Return an enum witch identifies the device.
  Support Objective-C by adding a wrapper for device name.
                   DESC
  s.homepage     = "https://github.com/sebastianvarela/DeviceIdentificator"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Sebastián Varela" => "sebastian.varela@s3ba.net" }
  s.social_media_url   = "http://twitter.com/skirmish84"

  s.platform     = :ios, '8.0'

  s.source       = { :git => "https://github.com/sebastianvarela/DeviceIdentificator.git", :tag => "v#{s.version}" }
  s.source_files  = "Source", "Source/**/*.{swift}"
  s.framework  = "UIKit"
end
