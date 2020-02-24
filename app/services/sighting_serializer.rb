class SightingSerializer
  
  def initialize(sighting_object)
    @sighting = sighting_object
  end
  
  def to_serialized_json
    return @sighting.to_json(include:
    {
      bird: { except: [:created_at, :updated_at] },
      location: { except: [:created_at, :updated_at] }
    }, except: [:created_at, :updated_at])
  end
  
end
