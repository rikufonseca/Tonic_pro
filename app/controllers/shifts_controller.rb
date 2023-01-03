class ShiftsController < ApplicationController
  def new
    @shift = Shift.new()
    @planning = Planning.find(params[:planning_id])
    @tonic = Tonic.find_by(city: "Athens")
    @employees = @tonic.employees.map(&:first_name)
  end

  def create
    @shift = Shift.new(shift_params)

    if @shift.save!
      redirect_to planning_path(@planning)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
