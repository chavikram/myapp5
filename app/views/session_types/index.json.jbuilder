json.array!(@session_types) do |session_type|
  json.extract! session_type, :id, :name
  json.url session_type_url(session_type, format: :json)
end
