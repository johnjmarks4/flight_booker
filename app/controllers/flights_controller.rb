class FlightsController < ApplicationController

  def new
  end

  def create
    @passenger = Passenger.new(params)
  end

  def index
    @airport_options = Airport.all.map { |a| [ a.name, a.id ] }
    @passengers = { 1 => 1, 2 => 2, 3 => 3, 4 => 4 }
    @departure_dates = Flight.find_time
    @routes = []

    if !params[:from].nil? && !params[:to].nil? &&
       !params[:date].nil?

      @flights = Flight.search_flights(params[:from], params[:to], params[:date])
      @flights.each do |flight|
        home = Airport.find(flight["home_id"]).name
        destination = Airport.find(flight["destination_id"]).name
        @routes << [home, destination, flight["id"]]
      end
    end
  end
end