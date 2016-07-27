json.extract! client, :id, :name, :language_id, :location_address, :location_zipcode, :location_city, :birthday, :date_of_arrival, :created_at, :updated_at
json.url client_url(client, format: :json)