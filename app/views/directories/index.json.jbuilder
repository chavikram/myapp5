json.array!(@directories) do |directory|
  json.extract! directory, :id, :name
  json.url directory_url(directory, format: :json)
end
