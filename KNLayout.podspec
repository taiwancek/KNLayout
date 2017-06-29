Pod::Spec.new do |s|
s.name        = "KNLayout"
s.version     = "1.0"
s.summary     = "KNLayout is a very small library to help make your use of `NSLayoutConstraint` in Swift more legible & declarative. "
s.homepage    = "https://github.com/taiwancek/KNLayout"
s.license     = { :type => "MIT" }
s.authors     = { "cek" => "taiwanmancek@gmail.com" }

s.requires_arc = true
s.osx.deployment_target = "10.12.5"
s.ios.deployment_target = "8.0"
s.source   = { :git => "https://github.com/taiwancek/KNLayout.git", :tag => s.version }
s.source_files = "Source/*.swift"
s.pod_target_xcconfig =  {
'SWIFT_VERSION' => '3.0',
}
end
