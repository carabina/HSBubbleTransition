
Pod::Spec.new do |s|
  s.name             = 'HSBubbleTransition'
  s.version          = '0.0.2'
  s.summary          = 'Bubble like transition'

  s.description      = <<-DESC
The view control is presented or dismissed using custom animation please check the example and desired results
                       DESC

  s.homepage         = 'https://github.com/harshsrivastavaglobussoft/HSBubbleTransition'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HarshSrivastava' => 'harshsrivastava@globussoft.in' }
  s.source           = { :git => 'https://github.com/harshsrivastavaglobussoft/HSBubbleTransition.git', :tag => s.version }

  s.ios.deployment_target = '11.0'
  s.source_files = 'HSBubbleTransition/*'
  s.swift_version = '4.0'

end
