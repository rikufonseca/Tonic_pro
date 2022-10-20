class Booking < ApplicationRecord
  belongs_to :client
  belongs_to :cathegory
  belongs_to :offer

  validates :time, :date, presence: true
  validates :time, :date, uniqueness: true
end
