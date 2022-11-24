class Toy < ApplicationRecord
  belongs_to :user
  has_many :rents, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :address, presence: true
  validates :price, numericality: { only_integer: true }, presence: true
  validates :description, length: { minimum: 15 }, presence: true

  has_one_attached :photo

  include PgSearch::Model
    pg_search_scope :search_by_title_and_description,
    against: [ :title, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
