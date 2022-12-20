class Booking < ApplicationRecord
  extend SimpleCalendar

  attr_accessor :phone_number, :name, :surname, :category

  validates_presence_of :phone_number, :name, :surname, allow_blank: true

  has_many :calendars
  has_many :sales
  has_many :booking_sub_categories
  has_many :sub_categories, through: :booking_sub_categories

  belongs_to :client

  default_scope -> { order(:start_time) }

  validates :start_time, :end_time, :total_price, presence: true
end
