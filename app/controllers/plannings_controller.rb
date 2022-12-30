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
