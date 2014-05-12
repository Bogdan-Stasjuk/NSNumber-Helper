Pod::Spec.new do |s|
  s.name             	= "NSNumber+Helpers"
  s.version          	= "0.1.0"
  s.summary          	= "A category on NSNumber."
  s.description      	= "A cetogory on NSNumber that extends standard Foundation class functionality."
  s.homepage         	= "https://github.com/Bogdan-Stasjuk/NSNumber-Helpers"
  s.license      		= { :type => 'MIT', :file => 'LICENSE' }
  s.author           	= { "Bogdan Stasjuk" => "Bogdan.Stasjuk@gmail.com" }
  s.source           	= { :git => "https://github.com/Bogdan-Stasjuk/NSNumber-Helpers.git", :tag => '0.1.0' }
  s.social_media_url = 'https://twitter.com/Bogdan_Stasjuk'
  s.platform     		= :ios, '6.0'
  s.requires_arc 	= true
  s.source_files 	= 'NSNumber+Helpers/*.{h,m}'
  s.public_header_files   	= 'NSNumber+Helpers/*.h'
end
