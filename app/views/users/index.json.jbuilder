json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password_digest, :pool_id
  json.url user_url(user, format: :json)
end
