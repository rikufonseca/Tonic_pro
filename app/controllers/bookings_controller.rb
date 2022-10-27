class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(
      start_at: Time.now.beginning_of_week
    )
  end

  def show
  end

  def new
    if Client.ids.nil?
      @client = Client.find(params[:client_id])
    else
      @client = Client.new
    end
    @category = Booking.where(category_id: @category.id)
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
