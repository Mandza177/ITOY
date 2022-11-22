class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :toys, dependent: destroy
  # has_many :rents, dependent: destroy

  validates :name, presence: true, uniqueness: true
end
