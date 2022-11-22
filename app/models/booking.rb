class Booking < ApplicationRecord
  attr_accessor :phone_number, :name, :surname, :category

  extend SimpleCalendar
  has_many :calendars

  belongs_to :client
  belongs_to :sub_category, optional: true
  belongs_to :combo_offer, optional: true


  default_scope -> { order(:start_at) }

  validates :start_at, presence: true
end
