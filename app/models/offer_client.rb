class OfferClient < ApplicationRecord
  belongs_to :client
  belongs_to :offer
end
