class Persona < ActiveRecord::Base
  default_scope { order("name ASC") }

  has_many :persona_questions
  has_many :questions, :through => :persona_questions
  has_many :interviews
end
