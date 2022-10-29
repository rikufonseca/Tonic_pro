class ComboOffer < ApplicationRecord
  has_many :bookings

  validates :status, inclusion: { in: [ true, false ] }
end
