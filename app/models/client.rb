class Client < ApplicationRecord
  has_many :bookings

  validates :name, :surname, :phone_number, :email, presence: true
  validates :name, :surname, :phone_number, :email, uniqueness: true
end
