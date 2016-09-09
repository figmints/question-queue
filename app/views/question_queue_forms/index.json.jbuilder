json.array!(@question_queue_forms) do |question_queue_form|
  json.extract! question_queue_form, :id, :title, :description, :department
  json.url question_queue_form_url(question_queue_form, format: :json)
end
