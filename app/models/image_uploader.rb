# coding: utf-8
# Shrine provides us with different plugins for different functions.
# Here are the plugins included in our uploader and their functions:
#
# :activerecord: This extends the “attachment” interface with support for ActiveRecord.
#   Whenever an “attachment” module is included, additional callbacks are added to the model.
# :determine_mime_type: This stores the actual MIME type of the uploaded file.
# :remove_attachment: The remove_attachment plugin allows you to delete attachments through checkboxes on the web form.
# :store_dimensions: This plugin extracts and stores dimensions of the uploaded image.
# :validation_helpers: This provides helper methods for validating attached files.

class ImageUploader < Shrine
  # Shrine::Attachment
  plugin :activerecord
  plugin :determine_mime_type
  plugin :remove_attachment
  plugin :store_dimensions
  plugin :validation_helpers
  plugin :derivatives

  Attacher.validate do
    validate_max_size 2.megabytes, message: 'is too large (max is 2 MB)'
    validate_mime_type %w[image/jpeg image/jpg image/png image/gif]
  end

  # Attacher.derivatives_processor do |original|
  #   magick = ImageProcessing::MiniMagick.source(original)

  #   { large:  magick.resize_to_limit!(700, 700),
  #     medium: magick.resize_to_limit!(500, 500),
  #     small:  magick.resize_to_limit!(300, 300), }
  # end
end
