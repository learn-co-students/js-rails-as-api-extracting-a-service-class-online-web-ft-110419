class SightingsController < ApplicationController
	def index
        @sightings = Sighting.all
        render json: SightingSerializer.new(@sightings).index
    end
    def show
        @sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(@sighting).index
    end
end
