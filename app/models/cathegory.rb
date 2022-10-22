class Cathegory < ApplicationRecord
  has_many :bookings
  has_many :sub_cathegories

  NAME = ["Manicure", "Pedicure", "Ονυχοπλαστική", "Αντρική περιποίηση", "εξτρα"]

  validates :name, presence: true, inclusion: { in: NAME }
end
