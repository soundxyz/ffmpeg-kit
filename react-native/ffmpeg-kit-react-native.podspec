require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "ffmpeg-kit-react-native"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platform          = :ios, "12.1"
  s.requires_arc      = true
  s.static_framework  = true

  s.source       = { :git => "https://github.com/soundxyz/ffmpeg-kit.git", :tag => "react.native.v#{s.version}" }

  s.dependency "React-Core"

  s.source_files      = '**/FFmpegKitReactNativeModule.m',
                        '**/FFmpegKitReactNativeModule.h'

  s.dependency 'soundxyz-ffmpeg-kit-ios-https', "6.0.2"
end
