Pod::Spec.new do |s|

  s.name         = "ScryptSwift"
  s.version      = "0.0.1"
  s.summary      = "A short description of ScryptSwift."
  s.homepage     = "https://github.com/nicholaslin/ScryptSwift"
  s.license      = "MIT"
  s.author       = { "nicholaslin" => "990215314@qq.com" }
  
  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.7"

  s.source       = { :git => "https://github.com/nicholaslin/ScryptSwift.git", :tag => "#{s.version}" }
  s.source_files = "Sources/*.swift"
  
  s.dependency 'CryptoSwift'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }

end
