Pod::Spec.new do |spec|
	spec.name                       = "Documentation"
	spec.version                    = "0.0.1"
	
	spec.summary                    = "Documentation framework for Swift."
	spec.description                = <<-DESC
		A Swift framework that makes working with documentation easier.
	DESC
	
	spec.homepage                   = "https://github.com/technogen-gg/Documentation.git"
	spec.license                    = { :type => "Unlicense", :file => "LICENCE.txt" }
	spec.authors                    = { "Gor Gyolchanyan" => "gor.zone@icloud.com" }
	
	spec.source                     = { :git => "https://github.com/technogen-gg/Documentation.git", :tag => "#{spec.version}" }
	spec.source_files               = "Sources", "Sources/**/*.{swift,h,c,cpp,m,mm}"
	
	spec.osx.deployment_target      = '10.9'
	spec.ios.deployment_target      = '8.0'
	spec.tvos.deployment_target     = '9.0'
	spec.watchos.deployment_target  = '2.0'
	
	spec.swift_version = "5.0"
	spec.requires_arc = true
	spec.xcconfig = {  }
end
