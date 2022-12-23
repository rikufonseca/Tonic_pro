require 'date'

class BookingsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:getclient, :getsubcat]

  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @bookings = Booking.where(start_time: start_date.beginning_of_week..start_date.end_of_week)
  end

  def show
  end

  def new
    @categories = Category.all
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
    @booking = Booking.new(booking_params)

    sub_categories_ids = params[:booking][:sub_cats].values
    
    price = 0
    total_time = 0

    sub_categories_ids.each do |id|
      sub_cat = SubCategory.find(id.to_i)
      price += sub_cat.price
      total_time += sub_cat.time
    end

    start = DateTime.new(params[:booking]['start_time(1i)'].to_i, 
      params[:booking]['start_time(2i)'].to_i, 
      params[:booking]['start_time(3i)'].to_i, 
      params[:booking]['start_time(4i)'].to_i, 
      params[:booking]['start_time(5i)'].to_i)

    finish = start + total_time.seconds

    client = Client.find_or_create_by(phone_number: params[:booking][:phone_number]) do |client|
      client.name = params[:booking][:name]
      client.surname = params[:booking][:surname]
      client.phone_number = params[:booking][:phone_number]
    end

    @booking.client = client
    @booking.start_time = start
    @booking.end_time = finish
    @booking.total_price = price
    @booking.save!
    
    sub_categories_ids.each_with_index do |id, index|
      booking_sub_cat = BookingSubCategory.new(
        booking: @booking,
        sub_category_id: id.to_i
      )
      if index == sub_categories_ids.count - 1
        if booking_sub_cat.save!
          redirect_to bookings_path
          flash[:success] = "your booking is registered"
        else
          render :new, status: :unprocessable_entity
        end
      else
        booking_sub_cat.save!
      end
    end    
  end

  def edit
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :note, :confirmed, :total_price, :end_time)
  end
end
