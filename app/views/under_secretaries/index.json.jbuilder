json.array!(@under_secretaries) do |under_secretary|
  json.extract! under_secretary, :id, :name
  json.url under_secretary_url(under_secretary, format: :json)
end
