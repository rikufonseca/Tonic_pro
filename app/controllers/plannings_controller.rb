class PlanningsController < ApplicationController
  def index
    @plannings = Planning.where(:from == Date.today.year)
  end

  def show
    this_week = Time.now.strftime("%V").to_i

    if params[:id]
      @planning = Planning.find(params[:id])
    end

    @planning = Planning.find_by(week: this_week).nil? ? Planning.last : Planning.find_by(week: this_week)

    @shifts = @planning.shifts

    # @monday_shifts = shifts.filter { |shift| shift.beginning.monday? }
    # @tuesday_shifts =shifts.filter { |shift| shift.beginning.tuesday? }
    # @wednesday_shifts = shifts.filter { |shift| shift.beginning.wednesday? }
    # @thursday_shifts = shifts.filter { |shift| shift.beginning.thursday? }
    # @friday_shifts = shifts.filter { |shift| shift.beginning.friday? }
    # @saturday_shifts = shifts.filter { |shift| shift.beginning.saturday? }
    # @sunday_shifts = shifts.filter { |shift| shift.beginning.sunday? }
  end

  def new
    @planning = Planning.new
  end

  def create
    @planning = Planning.new(planning_params)
    ending = params[:planning][:from].to_date.sunday()
    week = ending.strftime("%V").to_i
    @planning.to = ending
    @planning.week = week
    if @planning.save!
      redirect_to planning_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def planning_params
    params.require(:planning).permit(:week, :from, :to)
  end
end
