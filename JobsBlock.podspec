Pod::Spec.new do |spec|
  spec.name             = 'JobsBlock'
  spec.version          = '1.0.3'
  spec.summary          = 'JobsOCBaseConfig.JobsBlock'
  spec.description      = <<-DESC
所有的项目根据这个根来进行统一配置和调用
做到全局的一致和统一
DESC

  spec.homepage         = 'https://github.com/JobsKits/JobsBlock'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'JobsKits' => 'JobsKits' }

  # 建议用 https，避免别的机器/CI 没 SSH key 时拉取失败
  spec.source           = { :git => 'https://github.com/JobsKits/JobsBlock.git', :tag => spec.version.to_s }

  spec.platform         = :ios, '9.0'
  spec.requires_arc     = true

  # =============================== Source Files ===============================
  # 让根目录 3 个头文件 + 两个子目录下所有 .h 都进入 Pods
  spec.source_files = [
    'JobsBlock.h',
    'JobsBizBlock.h',
    'JobsBlockDef.h',
    '不定参数的Block/**/*.h',
    '确定参数的Block/**/*.h'
  ]

  # =============================== Public Headers ===============================
  # 公开头文件（与 source_files 保持一致更省心）
  spec.public_header_files = [
    'JobsBlock.h',
    'JobsBizBlock.h',
    'JobsBlockDef.h',
    '不定参数的Block/**/*.h',
    '确定参数的Block/**/*.h'
  ]

  # =============================== Preserve Paths ===============================
  # 关键：尽量保持 Pods 里的目录结构展示（图二那种层级）
  # 这里不影响编译，只影响“哪些文件保留在 Pods 目录、以及 Xcode 工程分组更贴近路径”
  spec.preserve_paths = [
    'JobsBlock.md',
    'README.md',
    'LICENSE',
    '不定参数的Block/**/*',
    '确定参数的Block/**/*'
  ]

  # 框架依赖的framework
  spec.frameworks = 'UIKit', 'Foundation'

  # 如果你未来要把 icon.png 当资源拷贝进 App，再打开这行
  # spec.resources = ['icon.png']
end
