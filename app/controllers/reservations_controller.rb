class ReservationsController < ApplicationController
	def index
		@reservations = Reservation.all
	end

	def new
	end

	def create
		reservation = Reservation.new(reservation_params)
		if reservation.save
			redirect_to "/reservations"
		else 
			flash[:errors] = reservation.errors.full_messages
			redirect_to "/reservations/new"
	end
end

def show 
	@restaurants = Reservation.find(params[:id]).restaurants
end

def edit 
	@reservation = Reservation.find(params[:id])
end

def update 
	reservation = Reservation.find(params[:id])
		if reservation.update(reservation_params)
			redirect_to "/reservations"
		else 
			flash[:errors] = reservation.errors.full_messages
			redirect_to "/reservations/#{reservation.id}/edit"
end
end

def destroy
	reservation = Reservation.find(params[:id])
	reservation.destroy
	redirect_to "/reservations"
end

	private 
	def reservation_params
		params.require(:reservation).permit(:date, :time, :name, :number)
	end
end
