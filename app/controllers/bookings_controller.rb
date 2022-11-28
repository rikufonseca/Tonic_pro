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
    @categories = Category.all
    @booking = Booking.new
  end

  def getclient
    if phone.to_i.instance_of?(Integer)
      phone = params['phone']
      clients = Client.where("phone_number LIKE '%#{phone}%'")
      render json: clients
    else
      flash[:error] = "the number is not valid"
    end
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
      last_client = Client.find_or_create_by(phone_number: params["booking"]["phone_number"]) do |client|
        client.name = params["booking"]["name"]
        client.surname = params["booking"]["surname"]
        client.phone_number = params["booking"]["phone_number"]
      end

    @booking = Booking.new(booking_params)
    @booking.client = last_client

    date = DateTime.new(params['booking']['start_at(1i)'].to_i, params['booking']['start_at(2i)'].to_i, params['booking']['start_at(3i)'].to_i, params['booking']['start_at(4i)'].to_i, params['booking']['start_at(5i)'].to_i)

    @booking.start_at = date
    @booking.sub_category = SubCategory.find(params[:booking]["sub_category"].to_i)

    if @booking.save!
      redirect_to bookings_path
      flash[:notice] = "your booking had been registered"
    else
      render :new, status: :unprocessable_entity
      flash[:error] = "Something went wrong check the infos your entered"
    end
  end

  def edit
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:sub_category_id, :start_at, :note, :client_id)
  end
end
