class Offer < ApplicationRecord
  belongs_to :sub_category
  has_many :offer_clients
  has_many :clients, through: :offer_clients

  validates :status, inclusion: { in: [ true, false ] }
  validates :required_number, :description, presence: true
end
