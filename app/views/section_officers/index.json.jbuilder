json.array!(@section_officers) do |section_officer|
  json.extract! section_officer, :id, :name
  json.url section_officer_url(section_officer, format: :json)
end
