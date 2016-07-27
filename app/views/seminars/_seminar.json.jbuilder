json.extract! seminar, :id, :seminar_type_id, :date, :created_at, :updated_at
json.url seminar_url(seminar, format: :json)