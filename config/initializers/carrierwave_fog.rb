CarrierWave.configure do |config|

  config.fog_credentials = {
    :provider => 'Google',
    :google_storage_access_key_id => 'GOOGTOX5JE65IH75L6VU',
    :google_storage_secret_access_key => 'FUxpBBzOUzhryhJwc5OC/+Fr+AGVRJR'
  }
  
  #config.fog_directory  = 'user_images'

end