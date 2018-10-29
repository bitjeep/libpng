Pod::Spec.new do |s|
  s.name                  = 'libpng'
  s.version               = '1.16.36'
  s.summary               = 'PNG C library'
  s.homepage              = 'https://smartvcs.visualstudio.com/smartlib.fpl/_git/libpng'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.source                = { :git => 'https://smartvcs.visualstudio.com/smartlib.fpl/_git/libpng', :revision => s.version.to_s }
  s.author                = { 'Many contributors' => "LICENSE" }

  s.requires_arc          = true
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.14'

  s.ios.source_files      = '*.{c,h}', 'projects/iOS/libpng/include/pnglibconf.h', 'arm/*.{c,S}'
  s.osx.source_files      = '*.{c,h}', 'projects/iOS/libpng/include/pnglibconf.h'
  s.exclude_files         = 'example.c', 'pngtest.c'

  s.pod_target_xcconfig   = {
    'CLANG_WARN_COMMA' => 'NO'
  }
  s.compiler_flags        = '-Wno-incompatible-pointer-types-discards-qualifiers'
  s.libraries             = 'z'
end
