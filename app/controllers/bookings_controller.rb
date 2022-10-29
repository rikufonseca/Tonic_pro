require 'date'

class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(
      start_at: Time.now.beginning_of_week
    )
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    raise
    client = Client.find()
    date = DateTime.new(params['booking']['start_at(1i)'].to_i, params['booking']['start_at(2i)'].to_i, params['booking']['start_at(3i)'].to_i, params['booking']['start_at(4i)'].to_i, params['booking']['start_at(5i)'].to_i)
    # Booking.create()
  end

  def edit
  end

  def destroy
  end



end
