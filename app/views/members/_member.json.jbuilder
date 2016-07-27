json.extract! member, :id, :username, :email, :password, :password_digest, :name, :created_at, :updated_at
json.url member_url(member, format: :json)