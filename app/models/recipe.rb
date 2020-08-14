class Recipe < ApplicationRecord
  has_many :instructions, dependent: :destroy
  accepts_nested_attributes_for :instructions, reject_if: :all_blank, allow_destroy: true

  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true, length: { minimum: 4 }
  validates :description, presence: true, length: { maximum: 255 }
end
