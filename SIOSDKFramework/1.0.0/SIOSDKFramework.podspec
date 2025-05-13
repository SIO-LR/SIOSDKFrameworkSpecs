Pod::Spec.new do |spec|

  spec.name         = "SIOSDKFramework"
  spec.version      = "1.0.0"
  spec.summary      = "A logn description of SIOSDKFramework. what"

  spec.description  = <<-DESC
  some simple description longer than the ducking summary
                   DESC

  spec.homepage     = "https://sunt.io"

  spec.license = {
      :type => 'MIT',
      :text => <<-LICENSE
  MIT License
  
  Copyright (c) 2025 SIO-LR
  
  Permission is hereby granted, free of charge, to any person obtaining a copy...
      LICENSE
    }
  
  spec.author             = { "SIO-LR" => "edi@lendrise.com" }
  spec.platform     = :ios, "15.5"


  spec.source       = { :http => "https://suntio-ios-sdk.s3.eu-central-1.amazonaws.com/SIOSDKFramework-1.0.0.zip", :flatten => false }

  spec.vendored_frameworks = 'SIOSDKFramework.xcframework'
  # spec.swift_version = '5.3'
  spec.ios.deployment_target = '15.5'

  # spec.dependency 'GoogleMLKit/TextRecognition'

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
