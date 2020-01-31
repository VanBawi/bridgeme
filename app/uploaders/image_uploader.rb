class ImageUploader < Carrierwave::Uploader::Base
    # Storage configuration within the uploader supercedes the global CarrierWave
    # config, so either comment out `storage :file`, or remove that line, otherwise
    # AWS will not be used.
    storage :fog

  end