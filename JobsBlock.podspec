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

  # =============================== Source Files ===============================
  spec.source_files = [
    'JobsBlock.h',
    'JobsBizBlock.h',
    'JobsBlockDef.h',
    '确定参数的Block/**/*.h',
    '不定参数的Block/**/*.h'
  ]

  # =============================== Public Headers ===============================
  spec.public_header_files = [
    'JobsBlock.h',
    'JobsBizBlock.h',
    'JobsBlockDef.h',
    '确定参数的Block/**/*.h',
    '不定参数的Block/**/*.h'
  ]

  spec.frameworks = 'UIKit', 'Foundation'
end
