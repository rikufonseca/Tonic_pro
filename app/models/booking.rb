class Booking < ApplicationRecord
  attr_accessor :phone_number

  extend SimpleCalendar
  has_many :calendars

  belongs_to :client
  belongs_to :category
  belongs_to :combo_offer

  validates :time, :date, presence: true
  validates :time, :date, uniqueness: true
end
