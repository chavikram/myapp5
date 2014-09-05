json.array!(@myministers) do |myminister|
  json.extract! myminister, :id, :name, :ministry_id
  json.url myminister_url(myminister, format: :json)
end
