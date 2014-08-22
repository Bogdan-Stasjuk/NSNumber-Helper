Pod::Spec.new do |s|
  s.name             	= "NSNumber+Helper"
  s.version          	= "1.0.0"
  s.summary          	= "A category on NSNumber"
  s.description      	= "A cetogory on NSNumber that extends standard Foundation class functionality"
  s.homepage         	= "https://github.com/Bogdan-Stasjuk/NSNumber-Helper"
  s.license      		= { :type => 'MIT', :file => 'LICENSE' }
  s.author           	= { "Bogdan Stasjuk" => "Bogdan.Stasjuk@gmail.com" }
  s.source           	= { :git => "https://github.com/Bogdan-Stasjuk/NSNumber-Helper.git", :tag => '1.0.0' }
  s.social_media_url = 'https://twitter.com/Bogdan_Stasjuk'
  s.platform     		= :ios, '6.0'
  s.requires_arc 	= true
  s.source_files 	= 'NSNumber+Helper/*.{h,m}'
  s.public_header_files   	= 'NSNumber+Helper/*.h'
end
