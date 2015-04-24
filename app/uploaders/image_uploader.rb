class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  storage :file
  #storage :fog

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    'default_user.png' #rails will look at 'app/assets/images/default_avatar.png'
  end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :large_image do
    process :resize_to_fill => [150, 150]
  end
  version :medium_image do
    process :resize_to_fill => [50, 50]
  end
  version :small_image do
    process :resize_to_fill => [35, 35]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
