Pod::Spec.new do |spec|

  spec.name         = "SIOSDKFramework"
  spec.version      = "1.0.2"
  spec.summary      = "This SDK is used by the KYC (Know Your Customer) flow, giving the option to validate a user's identity with electronic identity documents via NFC."

  spec.description  = <<-DESC
  This SDK is used by the integrating applications of the sunt.io KYC (Know Your Customer)
  flow to provide the ability to read electronic identity documents in order for the user to be able to proceed with the identification process.
                   DESC

  spec.homepage     = "https://sunt.io"

  spec.license = {
      :type => 'Proprietary',
      :file => 'LICENSE'
  }

  spec.author             = { "SIO-LR" => "edi@lendrise.com" }
  spec.platform     = :ios, "15.5"


  spec.source       = { :http => "https://suntio-ios-sdk.s3.eu-central-1.amazonaws.com/SIOSDKFramework-1.0.2.zip", :flatten => false }

  spec.vendored_frameworks = 'SIOSDKFramework.xcframework'
  spec.ios.deployment_target = '15.5'

  spec.dependency 'GoogleMLKit/TextRecognition'
  # spec.dependency 'GoogleMLKit/ObjectDetection', '8.0.0'
  spec.dependency 'OpenSSL-Universal', '1.1.2301'
  spec.dependency 'JOSESwift', '~> 3.0'

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
