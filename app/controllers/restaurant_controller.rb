class RestaurantController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def new
	end

	def create
		restaurant = Restaurant.new(restaurant_params)
		if restaurant.save
			redirect_to "/restaurants"
		else 
			flash[:errors] = restaurant.errors.full_messages
			redirect_to "/restaurants/new"
	end
end

def show 
	@reservation = Restaurant.find(params[:id]).reservations
end

def edit 
	@restaurant = Restaurant.find(params[:id])
end

def update 
	restaurant = Restaurant.find(params[:id])
		if restaurant.update(restaurant_params)
			redirect_to "/restaurants"
		else 
			flash[:errors] = reservation.errors.full_messages
			redirect_to "/restaurants/#{restaurants.id}/edit"
end
end

def destroy
	restaurant = Restaurant.find(params[:id])
	restaurant.destroy
	redirect_to "/restaurants"
end

	private 
	def restaurant_params
		params.require(:restaurant).permit(:name, :city, :cuisine)
	end
end
