json.array!(@persona_questions) do |persona_question|
  json.extract! persona_question, :id, :persona_id, :question_id
  json.url persona_question_url(persona_question, format: :json)
end
