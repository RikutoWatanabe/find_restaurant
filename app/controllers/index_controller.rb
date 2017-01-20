class IndexController < ApplicationController
	def index
		@restaurants = Restaurant.all
		@time = Time.zone.now
	end
end
