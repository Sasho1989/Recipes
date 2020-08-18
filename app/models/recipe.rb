class Recipe < ApplicationRecord
  has_many :instructions, dependent: :destroy
  accepts_nested_attributes_for :instructions, reject_if: :all_blank, allow_destroy: true

  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  belongs_to :user

  validates :title, presence: true, length: { minimum: 4 }
  validates :description, presence: true
end
