class BookingsController < ApplicationController
  def new
    @to_airport = Airport.find_name(params[:to])
    @from_airport = Airport.find_name(params[:from])
    @flight_id = params[:flight_id]
    @date = "#{params[:month]}/#{params[:day]}/#{params[:year]}"
  end

  def create
    @passenger = Passenger.new(name: params[:name], email: params[:email])
    if @passenger.save
      @flight = Flight.find(params[:flight_id])
      @flight.bookings.create(flight_id: params[:flight_id], passenger_id: @passenger.id)
      render bookings_show_path
    end
  end

  def show
  end
end