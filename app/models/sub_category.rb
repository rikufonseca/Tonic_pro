class SubCategory < ApplicationRecord
  belongs_to :category

  has_many :booking_sub_categories
  has_many :bookings, through: :booking_sub_categories

  validates :name, :time, :price, presence: true
  validates :name, uniqueness: true

end
