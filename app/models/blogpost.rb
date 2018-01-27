class Blogpost < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :slug

  belongs_to :user

  def get_display_name
    if display_name.present?
      display_name
    else
      user.name
    end
  end
end
