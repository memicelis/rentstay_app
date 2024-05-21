class House < ApplicationRecord
  has_many_attached :images

  scope :favourites, -> { where(favourite: true) }
end
