class PersonaQuestion < ActiveRecord::Base
  belongs_to :persona
  belongs_to :question
end
