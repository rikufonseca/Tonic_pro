class Offer < ApplicationRecord
  belongs_to :sub_category
  has_many :bookings
end
