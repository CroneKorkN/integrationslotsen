json.extract! mission, :id, :mission_type_id, :guide_id, :client_id, :begin, :end, :created_at, :updated_at
json.url mission_url(mission, format: :json)