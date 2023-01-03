class Employee < ApplicationRecord
  has_many :shifts, dependent: :destroy
  has_many :plannings, through: :shifts

  belongs_to :tonic
end
