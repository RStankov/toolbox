class ImageUploader < CarrierWave::Uploader::Base
  IMAGE_TYPES = %w(jpg jpeg png gif)

  include CarrierWave::RMagick
  include CarrierWave::MimeTypes

  storage Features.s3_uploads? ? :fog : :file

  process :set_content_type

  def store_dir
    if Rails.env.test?
      "uploads_test/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    else
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  end

  def default_url
    "/fallbacks/#{model.class.to_s.underscore}/#{mounted_as}/#{version_name || 'default'}.png"
  end

  def filename
    'image.jpg' if original_filename
  end

  def extension_white_list
    IMAGE_TYPES
  end
end

