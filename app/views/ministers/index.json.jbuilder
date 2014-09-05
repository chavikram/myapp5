json.array!(@ministers) do |minister|
  json.extract! minister, :id, :name_title_id, :name
  json.url minister_url(minister, format: :json)
end
