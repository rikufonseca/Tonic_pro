class Client < ApplicationRecord
  has_many :bookings

  validates :name, :surname, :phone_number, presence: true
  validates :phone_number, uniqueness: true
  validates :phone_number, length: { minimum: 10 }
end
