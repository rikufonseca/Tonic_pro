class Shift < ApplicationRecord
  belongs_to :employee
  belongs_to :planning

  def is_shifted?(shifts, day, time)
    @shifts.select { |shift| shift.beginning.strftime("%A") == day.strftime("%A") && shift.beginning == time.strftime("%H:%M") }
  end
end
