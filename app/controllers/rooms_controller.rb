class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @users = current_user
  end

  def show
    @room = Room.find(params[:id])
    @user = current_user
    @booking = Booking.new

  end
end
