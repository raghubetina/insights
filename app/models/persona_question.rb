class PersonaQuestion < ActiveRecord::Base
  belongs_to :persona
  belongs_to :question

  validates :persona, :presence => true
  validates :question, :presence => true
end
