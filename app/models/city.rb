class City < ApplicationRecord
  geocoded_by :name
  has_many_attached :photos
  after_validation :geocode, if: :will_save_change_to_name?
end
