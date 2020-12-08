class BooksController < ApplicationController
	
	def index
		@restaurants = Restaurant.all
		@reservations = Reservation.all
		return @restaurants, @reservations
	end

	def create
		book = Book.new(book_params)
		if book.save
			redirect_to "/restaurants"
		else 
			flash[:errors] = book.errors.full_messages
			redirect_to "/books/new"
	end
end

	private 
	def book_params
		params.require(:book).permit(:restaurant_id, :reservation_id)
	end
end
