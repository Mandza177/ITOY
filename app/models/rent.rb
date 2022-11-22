class Rent < ApplicationRecord
  belongs_to :toys#, dependent: destroy
  belongs_to :user#, dependent: destroy

  validates :user_id, presence: true
  validates :object_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
  validates :acceptation, presence: true
end
