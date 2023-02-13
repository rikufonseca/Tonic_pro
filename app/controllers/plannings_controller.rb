class PlanningsController < ApplicationController
  def index
    @plannings = Planning.where(:from == Date.today.year)
  end

  def show
    this_week = Time.now.strftime("%V").to_i

    if params[:id]
      @planning = Planning.find(params[:id])
    else
      @planning = Planning.find_by(week: this_week).nil? ? Planning.last : Planning.find_by(week: this_week)
    end

    shifts = @planning.shifts
    time = Time.new(@planning.from.strftime("%Y"), @planning.from.strftime("%m"), @planning.from.strftime("%d"), 10, 00)
    day = Date.new(@planning.to.strftime("%Y").to_i, @planning.from.strftime("%m").to_i, @planning.from.strftime("%d").to_i)
    
    @monday_shifts = shifts.filter { |shift| shift.beginning.monday? }
    @tuesday_shifts = shifts.filter { |shift| shift.beginning.tuesday? }
    @wednesday_shifts = shifts.filter { |shift| shift.beginning.wednesday? }
    @thursday_shifts = shifts.filter { |shift| shift.beginning.thursday? }
    @friday_shifts = shifts.filter { |shift| shift.beginning.friday? }
    @saturday_shifts = shifts.filter { |shift| shift.beginning.saturday? }
    @sunday_shifts = shifts.filter { |shift| shift.beginning.sunday? }

    @week_shifts = []
    @week_shifts.push(@monday_shifts, @tuesday_shifts, @wednesday_shifts, @thursday_shifts, @friday_shifts, @saturday_shifts)
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
