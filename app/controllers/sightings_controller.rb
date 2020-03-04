class SightingsController < ApplicationController
  def index
    @sighting = Sighting.find(params[:id])
    render json: @sighting.to_json(:include => {:bird => {:only =>[:name, :species]},
                                   :location => {:only =>[:latitude, :longitude]}},
                                   :except => [:updated_at])
  end

  def show
    sighting = Sighting.find_by(id: params[:id])
    render json: SightingSeralizer.new(sighting).to_seralized_json
  end
end
