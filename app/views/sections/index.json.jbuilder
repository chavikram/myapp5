json.array!(@sections) do |section|
  json.extract! section, :id, :name, :section_officer_id, :under_secretary_id, :director_id
  json.url section_url(section, format: :json)
end
