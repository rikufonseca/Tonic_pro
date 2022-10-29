class Booking < ApplicationRecord
  attr_accessor :phone_number

  extend SimpleCalendar
  has_many :calendars

  belongs_to :client
  belongs_to :category
  belongs_to :combo_offer

  validates :start_at, :date, presence: true
end
