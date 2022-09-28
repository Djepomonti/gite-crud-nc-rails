class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @users = current_user
  end

  def dashboard
    @user = current_user
    @rooms = Room.all
    @bookings = Booking.all
  end

end
