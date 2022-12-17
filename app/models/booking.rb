class Booking < ApplicationRecord
  extend SimpleCalendar

  attr_accessor :phone_number, :name, :surname, :category

  validates_presence_of :phone_number, :name, :surname

  has_many :calendars
  has_many :sales
  has_many :booking_sub_categories
  has_many :sub_categories, through: :booking_sub_categories

  belongs_to :client

  default_scope -> { order(:start_at) }

  validates :start_time, :end_time, :status, :total_price, :confirmed, presence: true
end
