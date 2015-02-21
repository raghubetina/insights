class Question < ActiveRecord::Base
  has_many :answers
  has_many :persona_questions
  has_many :personas, :through => :persona_questions
end
