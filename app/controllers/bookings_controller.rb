class BookingsController < ApplicationController
  def new
    @to_airport = Airport.find_name(params[:to])
    @from_airport = Airport.find_name(params[:from])
    @flight = Flight.find(params[:flight_id])
    @date = params[:date]
  end

  def create
    flight_params
    @flight = Flight.find(params[:flight_id])
    if !@flight.nil?
      @passenger = @flight.passengers.create(name: params[:flights][:passenger][:name],
                                             email: params[:flights][:passenger][:email])
      render bookings_show_path
    end
  end

  def show
  end

  def flight_params
    params.require(:flights).permit(:flight_id, passenger_attributes: [:name, :email])
  end
end