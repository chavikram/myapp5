json.array!(@notices) do |notice|
  json.extract! notice, :id, :session_id, :house_diary_no, :answer_date, :subject, :received_date
  json.url notice_url(notice, format: :json)
end
