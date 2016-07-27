json.extract! location, :id, :address, :zipcode, :town, :created_at, :updated_at
json.url location_url(location, format: :json)