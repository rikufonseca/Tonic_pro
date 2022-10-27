class SubCategory < ApplicationRecord
  belongs_to :category
  has_one :offer

  validates :name, :time, :price, presence: true
  validates :name, uniqueness: true

end
