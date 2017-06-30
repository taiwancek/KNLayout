Pod::Spec.new do |s|
s.name        = "KNLayout"
s.version     = "1.5"
s.summary     = "KNLayout is a very small library to help make your use of `NSLayoutConstraint` in Swift more legible & declarative. "
s.homepage    = "https://github.com/taiwancek/KNLayout"
s.license     = { :type => "MIT" }
s.authors     = { "cek" => "taiwanmancek@gmail.com" }

s.platform = :ios
s.requires_arc = true
s.ios.deployment_target = "8"
s.source   = { :git => "https://github.com/taiwancek/KNLayout.git", :tag => s.version }
s.source_files = "Source/**/*"

end
