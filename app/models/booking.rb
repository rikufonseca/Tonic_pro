class Booking < ApplicationRecord
  belongs_to :client
  belongs_to :cathegory
  belongs_to :offer
end
