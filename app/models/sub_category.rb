class SubCategory < ApplicationRecord
  belongs_to :category
  has_one :offer
  has_many :bookings

  validates :name, :time, :price, presence: true
  validates :name, uniqueness: true

end
