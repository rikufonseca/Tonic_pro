class Cathegory < ApplicationRecord
  has_many :bookings
  has_many :sub_cathegories


  validates :name, presence: true
end
