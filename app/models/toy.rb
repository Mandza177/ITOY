class Toy < ApplicationRecord
  belongs_to :user
  has_many :rents, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :city, presence: true
  validates :price, numericality: { only_integer: true }, presence: true
  validates :description, length: { minimum: 15 }, presence: true

  has_one_attached :photo
end
