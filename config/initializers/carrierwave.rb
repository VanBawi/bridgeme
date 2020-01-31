CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV['S3_KEY'],                        # required unless using use_iam_profile
      aws_secret_access_key: ENV['S3_SECRET'],                        # required unless using use_iam_profile
      use_iam_profile:       true,                         # optional, defaults to false
      region:                ENV['S3_REGION'],                  # optional, defaults to 'us-east-1'
    }
    config.fog_directory  = ENV['S3_BUCKET']                                     # required
    config.fog_public     = false                                                 # optional, defaults to true
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
  end