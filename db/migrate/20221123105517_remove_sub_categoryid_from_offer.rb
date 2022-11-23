class RemoveSubCategoryidFromOffer < ActiveRecord::Migration[7.0]
  def change
    remove_reference :offers, :sub_category, index: true
  end
end
