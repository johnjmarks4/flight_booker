class FlightsController < ApplicationController

  def new
  end

  def create
  end

  def index
    @airports = Airport.all

    if session[:dates].nil?
      session[:dates] = Flight.find_time
    end

    @days, @months, @years = session[:dates][0], session[:dates][1], session[:dates][2]

    if !session[:flight].nil?
      @flight = session[:flight]
    else
      if !params[:from].nil? && !params[:to].nil? && !params[:day].nil? && !params[:month].nil? && !params[:year].nil?
        @flight = Flight.search_flights(params[:from], params[:to], params[:day], params[:month], params[:year])

        if !@flight.nil?
          session[:flight] = @flight
          redirect_to flights_index_path(@flight)
        end
      end
    end
  end
end