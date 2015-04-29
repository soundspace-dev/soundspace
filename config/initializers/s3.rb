CarrierWave.configure do |config|

  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAIHJ6C34Y3V62ZUGA',
      :aws_secret_access_key  => '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',
      :region                 => 'us-east-1'
  }
  
  config.fog_directory  = 'soundspaceimages'
  
end