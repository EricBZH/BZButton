Pod::Spec.new do |s|


  s.name         = "BZButton"
  s.version      = "1.0.1"
  s.summary      = "xib control button image and text"

  s.description  = <<-DESC
                   xib control button image and text. 从xib上调节图片方向.
                   DESC

  s.homepage     = "https://github.com/EricBZH/BZButton"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "EricBup" => "375298211@qq.com" }
  s.source       = { :git => "https://github.com/EricBZH/BZButton.git", :tag => "#{s.version}" }

  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = "BZButton/Classes/*.{h,m}"

end