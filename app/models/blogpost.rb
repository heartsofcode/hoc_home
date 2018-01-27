class Blogpost < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :slug

  belongs_to :user
end
