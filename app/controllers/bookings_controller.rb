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
    @booking = Booking.new
  end

  def create
    client_name = Client.find_or_create_by(name: params[:booking][:name])
    client_surname = Client.find_or_create_by(surname: params[:booking][:surname])
    client_phone = Client.find_or_create_by(phone_number: params[:booking][:phone_number])
    category = Category.order(:name).to_a
    Booking.create(client_id: [name: client_name, surname: client_surname, phone_number: client_phone], category_id: category, start_at: "start_at")
  end

  def edit
  end

  def destroy
  end

end
