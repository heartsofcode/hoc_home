# Shrine provides us with different plugins for different functions.
# Here are the plugins included in our uploader and their functions:
#
# :activerecord: This extends the “attachment” interface with support for ActiveRecord.
#   Whenever an “attachment” module is included, additional callbacks are added to the model.
# :determine_mime_type: This stores the actual MIME type of the uploaded file.
# :logging: The logging plugin logs any storing/processing/deleting that is performed.
#   By passing in Rails.logger to the :logger option, we change the logger to be useful in our Rails application.
# :remove_attachment: The remove_attachment plugin allows you to delete attachments through checkboxes on the web form.
# :store_dimensions: This plugin extracts and stores dimensions of the uploaded image.
# :validation_helpers: This provides helper methods for validating attached files.
# :versions: The versions plugin enables your uploader to deal with versions of an image.
#   To generate versions, you simply return a hash of versions like we did in our uploader.

class ImageUploader < Shrine
  include ImageProcessing::MiniMagick

  plugin :activerecord
  plugin :determine_mime_type
  plugin :logging, logger: Rails.logger
  plugin :remove_attachment
  plugin :store_dimensions
  plugin :validation_helpers
  plugin :versions, names: [:original, :thumb]

  Attacher.validate do
    validate_max_size 2.megabytes, message: 'is too large (max is 2 MB)'
    validate_mime_type_inclusion ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
  end

  def process(io, context)
    if context[:phase] == :store
      size_700 = resize_to_limit!(io.download, 700, 700)
      size_500 = resize_to_limit(size_700,    500, 500)
      size_300 = resize_to_limit(size_500,    300, 300)
      thumb = resize_to_limit(size_300, 200, 200)

      { original: io, large: size_700, medium: size_500, small: size_300, thumb: thumb }
    end
  end
end
