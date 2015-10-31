class DestinationsController < ApplicationController
  def index
  	@destinations = Destination.all
  end

  def new
  	@destination = Destination.new
  end

  def create
  	@destination = Destination.new(destination_params)
  	if @destination.save
  		redirect_to root_url
  	else
  		render 'new'
  	end
  end

  def edit
  	@destination = Destination.find(params[:id])
  end

  def update
  	@destination = Destination.find(params[:id])
  	@destination.update_attributes(destination_params)
  	redirect_to @destination
  end

  def show
  	@destination = Destination.find(params[:id])
  	@location_details = @destination.locations.order(:date)
  	@locations = @destination.locations.to_json
  end

  def destroy
  	@destination = Destination.find(params[:id])
  	@destination.destroy
  	redirect_to root_url
  end

  private
  	def destination_params 
  		params.require(:destination).permit(:name, :date, :description, :latitude, :longitude, locations_attributes: [:id, :name, :city, :address, :date, :description, :_destroy])
  	end
end
