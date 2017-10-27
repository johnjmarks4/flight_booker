class FlightsController < ApplicationController

  def new
  end

  def create
  end

  def index
    @airports = Airport.all

    dates = Flight.find_time
    @days, @months = dates[0], dates[1]

    if !session[:flight].nil?
      @flight = session[:flight]
    else
      if !params[:from].nil? && !params[:to].nil?
        @flight = Flight.search_flights(params[:from], params[:to])

        if !@flight.nil?
          session[:flight] = @flight
          redirect_to flights_index_path(@flight)
        end
      end
    end
  end
end