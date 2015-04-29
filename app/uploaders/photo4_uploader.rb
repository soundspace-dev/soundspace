class Photo4Uploader < CarrierWave::Uploader::Base
  
  include CarrierWave::MiniMagick
  storage :fog

  version :large_image do
    process :resize_to_fill => [900, 450]
  end
  version :medium_image do
    process :resize_to_fill => [500, 500]
  end
  version :small_image do
    process :resize_to_fill => [125, 125]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end

end
