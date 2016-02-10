json.array!(@friend_pools) do |friend_pool|
  json.extract! friend_pool, :id, :name
  json.url friend_pool_url(friend_pool, format: :json)
end
