json.array!(@answers) do |answer|
  json.extract! answer, :id, :body, :insight, :image, :question_id, :interview_id, :user_id
  json.url answer_url(answer, format: :json)
end
