class PlanningsController < ApplicationController
  def show
    this_week = Time.now.strftime("%U").to_i
    @planning = Planning.find_by(week: this_week)
  end

  def new
    @planning = Planning.new
  end

  def create
    raise
    @planning = Planning.new(planning_params)
    end_day = params[:planning][:from]
    if @planning.save!
      redirect_to planning_path
    end
  end

  private

  def planning_params
    params.require(:planning).permit(:week, :from, :to)
  end
end
