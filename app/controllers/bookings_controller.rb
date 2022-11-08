require 'date'

class BookingsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:getclient, :getsubcat]

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

  def getclient
    phone = params['phone']
    clients = Client.where("phone_number LIKE '%#{phone}%'")
    render json: clients
  end

  def getsubcat
    if params["category"] == ""
      sub_categories = []
    else
      category = Category.find(params["category"].to_i)
      sub_categories = SubCategory.where(category_id: category)
    end

    render json: sub_categories
  end


  def create
    date = DateTime.new(params['booking']['start_at(1i)'].to_i, params['booking']['start_at(2i)'].to_i, params['booking']['start_at(3i)'].to_i, params['booking']['start_at(4i)'].to_i, params['booking']['start_at(5i)'].to_i)
    # Booking.create()
  end

  def edit
  end


  def destroy
  end

end
