class Client < ApplicationRecord
  has_many :bookings

  validates :name, :surname, :phone_number, presence: { message: "πρέπει να δοθεί παρακαλώ" }
  validates :phone_number, uniqueness: true
  validates :phone_number, length: { minimum: 10, too_short: "%<count> χαρακτήρες δεν αρκούν για να επιτραπούν" }
end
