class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @nights = (@booking.end_date.to_date - @booking.start_date.to_date).to_i
    @villa = Villa.find(params[:villa_id])
    @price = (@booking.villa.price)
    @total_price = (@nights*@price)
  end

  def new
   @booking = Booking.new
   @villa=Villa.find(params[:villa_id])
   kljv
  end

   def create
    @booking = Booking.new(booking_params)
    set_villa
    @booking.villa = @villa
    @booking.user = current_user
    @booking.save
    redirect_to villa_booking_path(@villa, @booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path
  end

  private
  def set_villa
    @villa = Villa.find(params[:villa_id])
  end
  def booking_params
    params.require(:booking).permit( :start_date, :end_date)
  end
end
