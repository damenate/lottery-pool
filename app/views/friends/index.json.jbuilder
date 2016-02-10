json.array!(@friends) do |friend|
  json.extract! friend, :id, :name, :email, :friend_pool_id
  json.url friend_url(friend, format: :json)
end
