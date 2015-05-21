# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file

  version :thumb do
    process resize_to_fill: [200, 200]
  end
  
end
