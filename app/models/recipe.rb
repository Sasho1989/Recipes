class Recipe < ApplicationRecord
  has_many :instructions
  validates :title, presence: true, length: { minimum: 4 }
  validates :description, presence: true, length: { maximum: 255 }
end
