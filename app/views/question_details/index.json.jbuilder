json.array!(@question_details) do |question_detail|
  json.extract! question_detail, :id, :question_text, :answer_text, :statement_text, :question_id
  json.url question_detail_url(question_detail, format: :json)
end
