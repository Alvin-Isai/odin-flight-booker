class FlightsController < ApplicationController
  def search
    @airport_options = Airport.all.map { |a| [a.name, a.id] }
    @passenger_options = [[1], [2], [3], [4]]
    @date_options = Flight.all.map { |f| [f.start_date.strftime('%b %d, %Y'), f.start_date] }.uniq
    if params[:search]
      parsed_datetime = DateTime.parse(params[:start_date])
      @flights = Flight.where(
        from_airport: params[:from_airport],
        to_airport: params[:to_airport],
        start_date: parsed_datetime..(parsed_datetime + 1.day)
      )
    end
  end
end
