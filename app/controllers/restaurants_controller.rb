class RestaurantsController < ApplicationController
	def index
		time = Time.now
		now = time.hour
		@restaurants = Restaurant.where('start <= end and ? <= end and ? >= start',now,now)
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def create
		@restaurant = Restaurant.new(params_restaurant)
		if @restaurant.save
			redirect_to root_path
		else
			render new_restaurant_path
		end 
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		redirect_to root_path
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def new
		@restaurant = Restaurant.new
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		if @restaurant.update_attributes(params_restaurant)
			redirect_to restaurant_path(params[:id])
		else
			redirect_to edit_restaurant_path(params[:id])
		end
	end


	private

	def params_restaurant
		params.require(:restaurant).permit(:name, :start,:end,:location,:url)
	end

end
