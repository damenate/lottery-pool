json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :email, :office_pool_id
  json.url employee_url(employee, format: :json)
end
