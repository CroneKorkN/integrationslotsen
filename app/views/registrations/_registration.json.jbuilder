json.extract! registration, :id, :guide_id, :seminar_id, :created_at, :updated_at
json.url registration_url(registration, format: :json)