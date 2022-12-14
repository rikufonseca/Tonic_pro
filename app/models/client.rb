class Client < ApplicationRecord
  has_many :bookings
  has_many :sales

  validates :name, :surname, :phone_number, presence: true
  validates :phone_number, uniqueness: true
  validates :phone_number, length: { minimum: 10, too_short: "number too short" }, format: { with: / \d+ /, message: "allow only letter" }
end
