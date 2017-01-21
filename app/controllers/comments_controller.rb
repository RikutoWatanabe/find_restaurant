class CommentsController < ApplicationController
	def create
   		@restaurant = Restaurant.find(params[:restaurant_id])
		@comment = Comment.new(params_comment)
		@comment.restaurant = @restaurant
	 
		if @comment.save
			redirect_to restaurant_path(@restaurant)
		else
			redirect_to restaurant_path(@restaurant)
		end
	end

	def destroy
		@restaurant = Restaurant.find(params[:restaurant_id])
		@comment = Comment.find(params[:id])
		if @comment.destroy
			redirect_to restaurant_path(@restaurant)
		else 
			redirect_to restaurant_path(@restaurant)
		end
	end

	private
 
		def params_comment
			params.require(:comment).permit(:name, :content)
		end
end