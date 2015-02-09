Pod::Spec.new do |s|
  s.name = "SGLogging"
  s.summary = "NSLog replacement"
  
  s.version = "1.0.0"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.homepage = "https://github.com/7glyphs/SGLogging"
  s.author = { "7 glyphs Ltd." => "dev@7glyphs.com" }
  s.platform = :ios, "6.0"
  s.source = { :git => "https://github.com/7glyphs/SGLogging.git", :tag => "1.0.0" }
  s.requires_arc = true
  s.source_files = "SGLogging.{h,m}"
  s.frameworks = "UIKit"
  
end
