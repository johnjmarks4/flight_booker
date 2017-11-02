class FlightsController < ApplicationController

  def new
  end

  def create
    @passenger = Passenger.new(params)
  end

  def index
    @airport_options = Airport.all.map { |a| [ a.name, a.id ] }
    @passengers = { 1 => 1, 2 => 2, 3 => 3, 4 => 4 }

    if session[:dates].nil?
      session[:dates] = Flight.find_time
    end

    @days = session[:dates][0]
    @months = session[:dates][1]
    @years = session[:dates][2]
    @routes = []

    if !params[:from].nil? && !params[:to].nil? && !params[:day].nil? && !params[:month].nil? && !params[:year].nil?
      @flights = Flight.search_flights(params[:from], params[:to], params[:day], params[:month], params[:year])
      @flights.each do |flight|
        home = Airport.find(flight["home_id"]).name
        destination = Airport.find(flight["destination_id"]).name
        @routes << [home, destination, flight["id"]]
      end
    end
  end
end