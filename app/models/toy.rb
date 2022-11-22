class Toy < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :address, presence: true
  validates :price, numericality: { only_integer: true }, presence: true
  validates :description, length: { minimum: 15 }, presence: true

  has_one_attached :photo
end
