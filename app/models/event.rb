class Event < ApplicationRecord
  scope :not_yet_happened, -> { where('start_time >= ?', Date.current) } 
  belongs_to :calendar
end
