json.array!(@interviews) do |interview|
  json.extract! interview, :id, :held_on, :name, :company, :user_id, :persona_id, :notes
  json.url interview_url(interview, format: :json)
end
