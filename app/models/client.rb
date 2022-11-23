class Client < ApplicationRecord
  has_many :bookings

  validates :name, :surname, :phone_number, presence: true
  validates :name, :surname, :phone_number, uniqueness: true
end
