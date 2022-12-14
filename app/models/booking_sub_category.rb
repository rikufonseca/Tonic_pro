class BookingSubCategory < ApplicationRecord
  belongs_to :booking
  belongs_to :sub_category
end
