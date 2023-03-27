class Planning < ApplicationRecord
  has_many :shifts
  has_many :employees, through: :shifts

  WEEK_DAYS = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
end
