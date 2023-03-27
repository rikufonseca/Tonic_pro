class ShiftsController < ApplicationController
  def new
    @shift = Shift.new()
    @planning = Planning.find(params[:planning_id])
    @tonic = Tonic.find_by(city: "Athens")
    @employees = @tonic.employees.map(&:first_name)
  end

  def create
    @shift = Shift.new(shift_params)
    employee = Employee.find_by(first_name: params[:shift][:employee])
    planning = Planning.find(params[:planning_id].to_i)

    beginning = planning.from
    case params[:shift][:day]
    when "Monday" then beginning
    when "Tuesday" then beginning += 1.day
    when "Wednesday" then beginning += 2.day
    when "Thursday" then beginning += 3.day
    when "Friday" then beginning += 4.day
    when "Saturday" then beginning += 5.day
    when "Sunday" then beginning += 6.day
    end

    beginning = beginning.to_datetime.change({ hour: params[:shift][:beginnning_hour].to_i, min: params[:shift][:beginnning_minutes].to_i })
    ending = beginning.change({hour: params[:shift][:ending_hour].to_i, min: params[:shift][:ending_minutes].to_i })

    @shift.employee = employee
    @shift.planning = planning
    @shift.beginning = beginning
    @shift.ending = ending

    if @shift.save!
      redirect_to planning_path(@planning)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def shift_params
    params.require(:shift).permit(:employee_id, :planning_id, :beginning, :endind)
  end
end
