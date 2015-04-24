class PhotoUploader < CarrierWave::Uploader::Base
  
  include CarrierWave::MiniMagick
  storage :file
 
  #def store_dir
  #  "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  #end
  
  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    'default_photo.png' #rails will look at 'app/assets/images/default_avatar.png'
  end



  # Create different versions of your uploaded files:
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



end
