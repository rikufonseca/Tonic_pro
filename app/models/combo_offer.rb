class ComboOffer < ApplicationRecord
  has_many :bookings

  validates :status, inclusion: { in: [ true, false ] }
  validates :name, :description, :price, :time, presence: true
end
