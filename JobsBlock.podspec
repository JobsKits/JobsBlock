#
# Be sure to run `pod lib lint YMExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name             = 'JobsBlock'
  spec.version          = '1.0.1'
  spec.summary          = 'JobsOCBaseConfig.JobsBlock'
  spec.description      = <<-DESC
  所有的项目根据这个根来进行统一配置和调用
  做到全局的一致和统一
  千万要保证这个工程的编译通过，以后项目直接进行引用
DESC

  spec.homepage         = 'https://github.com/JobsKits/JobsBlock'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'JobsKits' => 'JobsKits' }

  # ✅ 建议用 https（避免别人/CI 没 SSH key 时 lint/安装失败）
  spec.source           = { :git => 'https://github.com/JobsKits/JobsBlock.git', :tag => spec.version.to_s }
  # spec.source       = { :git => 'https://github.com/JobsKits/JobsBlock.git', :tag => spec.version.to_s }

  spec.platform         = :ios, '9.0'
  spec.requires_arc     = true

  # =============================== Source Files ===============================
  # ✅ 保持你的目录结构不变：根目录 3 个头文件 + 两个目录下全部 .h
  spec.source_files = [
    'JobsBlock.h',
    'JobsBizBlock.h',
    'JobsBlockDef.h',
    '确定参数的Block/**/*.h',
    '不定参数的Block/**/*.h'
  ]

  # =============================== Public Headers ===============================
  spec.public_header_files = spec.source_files

=begin
  spec.subspec 'Core' do |core|
    core.source_files = 'ZFPlayer/Classes/Core/**/*'
    core.public_header_files = 'ZFPlayer/Classes/Core/**/*.h'
    core.resource = 'ZFPlayer/Classes/ControlView/ZFPlayer.bundle'
    core.dependency 'ZFPlayer/Core'
    core.frameworks = 'UIKit', 'MediaPlayer', 'AVFoundation'
  end
=end

  # 框架依赖的framework
  spec.frameworks   = 'UIKit','Foundation'
  # 框架依赖的其他第三方库
  # spec.dependency 'SDWebImage' # "~> 1.4"
  
end
