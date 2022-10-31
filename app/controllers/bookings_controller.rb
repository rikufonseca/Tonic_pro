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
    @phone = Client.find([:phone_number])

    respond_to do |format|
      if @phone.find
        format.html { redirect_to new_booking_path(@booking) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render "bookings/create", status: :unprocessable_entity }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end

    client = Client.find()
    date = DateTime.new(params['booking']['start_at(1i)'].to_i, params['booking']['start_at(2i)'].to_i, params['booking']['start_at(3i)'].to_i, params['booking']['start_at(4i)'].to_i, params['booking']['start_at(5i)'].to_i)
    # Booking.create()
  end

  def edit
  end

  def destroy
  end



end
