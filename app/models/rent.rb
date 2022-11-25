class Rent < ApplicationRecord
  belongs_to :toy
  belongs_to :user

  validates :user_id, presence: true
  validates :object_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
  validates :acceptation, presence: true
  # validates :status, inclusion: { in: ["Pending guest request", "Pending host validation", "Confirmed", "Canceled"], allow_nil: true }
end
