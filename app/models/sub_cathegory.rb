class SubCathegory < ApplicationRecord
  belongs_to :cathegory
  has_one :offer

  validates :name, :time, :price, presence: true
  validates :name, uniqueness: true

end
