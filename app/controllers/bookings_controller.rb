class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @rooms = Room.all
    @users = current_user
  end

  def show
    @booking = Booking.find(params[:id])
    @user = current_user
  end

  def create
    @room = Room.find(params[:room_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.room_id = @room.id
    @booking.user_id = @user.id
    @booking.save
    redirect_to bookings_path, notice: "Votre réservation à bien été prise ne compte"
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  def edit
    @user = current_user
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to bookings_path, notice: "Votre modification à bien été prise ne compte"
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :first_name, :last_name, :phone_number, :child, :adult)
  end
end
