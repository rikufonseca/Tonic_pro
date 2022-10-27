class Category < ApplicationRecord
  has_many :bookings
  has_many :sub_categories


  validates :name, presence: true
end
