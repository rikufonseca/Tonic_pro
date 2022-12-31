class Shift < ApplicationRecord
  belongs_to :employee
  belongs_to :planning

  def get_planning_shifts(shifts)

  end
end
