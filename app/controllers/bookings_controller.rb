class BookingsController < ApplicationController
	def show
		@booking = Booking.find(params[:id])
	end
	
	def new
    @flight = Flight.find(params[:flight_id])
    @passenger_num = params[:passengers].to_i
		
		@booking = Booking.new(flight_id: @flight.id)
		@passenger_num.times { @booking.passengers.build }
	end

	def create
    @booking = Booking.new(bookings_params)
		@booking.save
		redirect_to booking_path(@booking)
	end

  def bookings_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email, :_destroy])
  end

end
