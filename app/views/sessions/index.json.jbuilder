json.array!(@sessions) do |session|
  json.extract! session, :id, :session_type_id, :year
  json.url session_url(session, format: :json)
end
