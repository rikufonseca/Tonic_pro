class Booking < ApplicationRecord
  extend SimpleCalendar
  has_many :calendars

  belongs_to :client
  belongs_to :category
  belongs_to :offer

  validates :time, :date, presence: true
  validates :time, :date, uniqueness: true
end
