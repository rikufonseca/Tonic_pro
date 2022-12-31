class Planning < ApplicationRecord
  has_many :shifts
  has_many :employees, through: :shifts

  WEEK_DAYS = %w(Lundi mardi mercredi Jeudi Vendredi Samedi Dimanche)
end
