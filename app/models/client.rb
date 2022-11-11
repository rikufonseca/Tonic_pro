class Client < ApplicationRecord
  has_many :bookings
  has_many :offer_clients
  has_many :offers, through: :offer_clients

  validates :name, :surname, :phone_number, presence: true
  validates :name, :surname, :phone_number, uniqueness: true
end
