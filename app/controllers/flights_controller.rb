class FlightsController < ApplicationController
  def index
  end

  def new
    @flight = Flight.new
  end
end
 