class Booking < ApplicationRecord
  attr_accessor :phone_number, :name, :surname

  extend SimpleCalendar
  has_many :calendars

  belongs_to :client
  belongs_to :category
  belongs_to :combo_offer


  default_scope -> { order(:start_at) }

  validates :start_at, presence: true
end
