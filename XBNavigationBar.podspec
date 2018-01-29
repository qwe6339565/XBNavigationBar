Pod::Spec.new do |s|
s.name = 'XBNavigationBar'
s.version = '1.0.0'
s.license = 'MIT'
s.summary = '一个自定义导航条'
s.homepage = 'https://github.com/qwe6339565/XBNavigationBar'
s.authors = { 'qwe6339565' => '532137371@qq.com' }
s.source = { :git => "https://github.com/qwe6339565/XBNavigationBar.git", :tag => "1.0.0"}
s.requires_arc = trues.ios.deployment_target = '7.0'
s.source_files = "./*.{h,m}"
s.frameworks = 'UIKit'
end
