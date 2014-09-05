json.array!(@questions) do |question|
  json.extract! question, :id, :question_type_id, :notice_id, :section_id, :question_no, :session_id, :subject, :answer_date, :received_date
  json.url question_url(question, format: :json)
end
