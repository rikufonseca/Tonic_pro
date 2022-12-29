class PlanningsController < ApplicationController
  def show
    @planning = Planning.find(params[:id])
  end
end
