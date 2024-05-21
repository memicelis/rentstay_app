class House < ApplicationRecord
  has_many_attached :images

  scope :favourites, -> { where(favourite: true) }

  def toggle_favourite!
    update(favourite: !favourite)
    self.class.favourites
  end
end
