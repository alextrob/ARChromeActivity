Pod::Spec.new do |s|
  s.platform     = :ios, '10.0'
  s.ios.deployment_target = '10.0'
  s.name         = "ARChromeActivity"
  s.version      = "1.0.7"
  s.summary      = "A UIActivity subclass for opening URLs in Google Chrome."
  s.homepage     = "https://github.com/apploft/ARChromeActivity"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Alex Robinson" => "alex@rbnsn.me" }
  s.source       = { :git => "https://github.com/apploft/ARChromeActivity.git", :tag => s.version.to_s }
  s.source_files = 'ARChromeActivity/*.{h,m}'
  s.resources    = 'ARChromeActivity/*.png'
  s.resource_bundle = { "ARChromeActivity" => ["Resources/*"] }
  s.requires_arc = true
end
