Pod::Spec.new do |spec|
  spec.name             = 'JobsBlock'
  spec.version          = '1.0.2'
  spec.summary          = 'JobsOCBaseConfig.JobsBlock'
  spec.description      = <<-DESC
所有的项目根据这个根来进行统一配置和调用
做到全局的一致和统一
千万要保证这个工程的编译通过，以后项目直接进行引用
DESC

  spec.homepage         = 'https://github.com/JobsKits/JobsBlock'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'JobsKits' => 'JobsKits' }
  spec.source           = { :git => 'https://github.com/JobsKits/JobsBlock.git', :tag => spec.version.to_s }

  spec.platform         = :ios, '9.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

  # 让安装时默认带上所有 subspec（否则用户要手动写 subspec）
  spec.default_subspecs = 'Core', '不定参数的Block', '确定参数的Block'

  # =============================== Subspec: Core ===============================
  spec.subspec 'Core' do |ss|
    ss.source_files = [
      'JobsBlock.h',
      'JobsBizBlock.h',
      'JobsBlockDef.h'
    ]
    ss.public_header_files = [
      'JobsBlock.h',
      'JobsBizBlock.h',
      'JobsBlockDef.h'
    ]
  end

  # =============================== Subspec: 不定参数的Block ===============================
  spec.subspec '不定参数的Block' do |ss|
    ss.source_files = [
      '不定参数的Block/**/*.h'
    ]
    ss.public_header_files = [
      '不定参数的Block/**/*.h'
    ]
    ss.dependency 'JobsBlock/Core'
  end

  # =============================== Subspec: 确定参数的Block ===============================
  spec.subspec '确定参数的Block' do |ss|
    ss.source_files = [
      '确定参数的Block/**/*.h'
    ]
    ss.public_header_files = [
      '确定参数的Block/**/*.h'
    ]
    ss.dependency 'JobsBlock/Core'
  end

  # 非源码文件，想在 Finder/Pods 里保留可以加 preserve_paths（不影响 Xcode 分组）
  spec.preserve_paths = [
    'JobsBlock.md',
    'README.md',
    'LICENSE'
  ]
end
