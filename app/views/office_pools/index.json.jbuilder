json.array!(@office_pools) do |office_pool|
  json.extract! office_pool, :id, :name
  json.url office_pool_url(office_pool, format: :json)
end
