class SubCategory < ApplicationRecord
  belongs_to :category
  has_one :offer
  has_many :bookings, optional: true

  validates :name, :time, :price, presence: true
  validates :name, uniqueness: true

end
