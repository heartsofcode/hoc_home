require "image_processing/mini_magick"

class ImageUploader < Shrine
  Shrine::Attachment
  plugin :activerecord
  plugin :determine_mime_type
  plugin :remove_attachment
  plugin :store_dimensions
  plugin :validation_helpers
  plugin :derivatives, create_on_promote: true

  Attacher.validate do
    validate_max_size 2.megabytes, message: 'is too large (max is 2 MB)'
    validate_mime_type %w[image/jpeg image/jpg image/png image/gif]
  end

  Attacher.derivatives do |original|
    magick = ImageProcessing::MiniMagick.source(original)

    { large:  magick.resize_to_limit!(700, 700),
      medium: magick.resize_to_limit!(600, 600),
      small:  magick.resize_to_limit!(300, 300), }
  end
end
