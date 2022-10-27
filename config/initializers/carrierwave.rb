CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',                                       
      aws_access_key_id:     Rails.application.credentials.aws[:access_key_id],
      aws_secret_access_key: Rails.application.credentials.aws[:secret_access_key],    
      region:                'sa-east-1',                                            
      endpoint:              'https://s3-sa-east-1.amazonaws.com'          
    }
    config.fog_directory  = 'files-contact-list'                                      # required
    config.fog_public     = false                                                 # optional, defaults to true
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
    # For an application which utilizes multiple servers but does not need caches persisted across requests,
    # uncomment the line :file instead of the default :storage.  Otherwise, it will use AWS as the temp cache store.
    # config.cache_storage = :file
  end
