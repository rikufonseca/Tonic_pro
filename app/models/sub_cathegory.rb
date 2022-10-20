class SubCathegory < ApplicationRecord
  belongs_to :cathegory
  has_one :offer
end
