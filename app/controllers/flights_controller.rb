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
    @homes, @destinations = [], []

    if !session[:flights].nil?
      @flights = session[:flights]
      @flights.each { |flight| puts flight.inspect }
      @flights.each { |flight| @homes << Airport.find(flight["home_id"]).name }
      @flights.each { |flight| @destinations << Airport.find(flight["destination_id"]).name }
    else
      if !params[:from].nil? && !params[:to].nil? && !params[:day].nil? && !params[:month].nil? && !params[:year].nil?
        @flights = Flight.search_flights(params[:from], params[:to], params[:day], params[:month], params[:year])
      end

      if !@flights.nil?
        session[:flights] = @flights
        redirect_to flights_index_path(@flights)
      end
    end
  end
end