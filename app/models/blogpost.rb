class Blogpost < ApplicationRecord
  include ImageUploader::Attachment.new(:image)
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :slug
  #validates :image, presence: true

  belongs_to :user

  def get_display_name
    if display_name.present?
      display_name
    else
      user.name
    end
  end
end
