class AddReferenceSubCategoryToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :sub_category, index: true
  end
end
