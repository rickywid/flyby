class LocationsController < ApplicationController

	def show
		@destination = Destination.find(params[:destination_id])
		@location = Location.find(params[:id])
	end

end
