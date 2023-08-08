Pod::Spec.new do |s|

# 仓库名称
  s.name         = "TestXySDKCocoaPods"
# 仓库版本
  s.version      = "1.0.0"
# 描述
  s.summary      = "test"
# 描述
  s.description  = <<-DESC
           test desc
                   DESC
# 仓库主页
  s.homepage     = "https://github.com/thinkperson/TestXySDKCocoaPods"
# 证书信息，创建仓库时选择的
  s.license      = { :type => "MIT", :file => "LICENSE" }
# 作者信息
  s.author           = { "xiaonan" => "xiaonan@163.com" } 
# 开发平台，当时我们设置的是13.0
  s.ios.deployment_target = '11.0'
#s.platform     = :ios, '10.0'
# 我们用到的swift版本
#  s.swift_version = '5.0'
# git仓库地址
  s.source        = { :git => 'https://github.com/thinkperson/TestXySDKCocoaPods.git', :tag => s.version }
# 封装的framework名称
  s.ios.vendored_frameworks = 'xyvod_mobile_sdk_ios.framework'
s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
# 封装的framework依赖的第三方库
#  s.dependency 'Alamofire'
# 如果还有其他的依赖，依次添加即可
# s.dependency 'ObjectMapper'

# 工程配置
  s.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }

end
