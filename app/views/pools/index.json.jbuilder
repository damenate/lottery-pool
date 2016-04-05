json.array!(@pools) do |pool|
  json.extract! pool, :id, :name
  json.url pool_url(pool, format: :json)
end
