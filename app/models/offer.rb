class Offer < ApplicationRecord
  belongs_to :sub_cathegory
  has_many :bookings
end
