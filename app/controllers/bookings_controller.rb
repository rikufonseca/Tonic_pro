class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(
      start_time: Time.now.beginning_of_week
    )
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
