class Question < ActiveRecord::Base
  default_scope { order("persona_questions_count DESC") }
  has_many :answers
  has_many :persona_questions
  has_many :personas, :through => :persona_questions

  validates :body, :presence => true
end
