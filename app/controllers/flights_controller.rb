class FlightsController < ApplicationController

  def new
  end

  def create
  end

  def index
    @airports = Airport.all
    
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