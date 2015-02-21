class PersonaQuestion < ActiveRecord::Base
  belongs_to :persona
  belongs_to :question, :counter_cache => true

  validates :persona, :presence => true, :uniqueness => { :scope => :question }
  validates :question, :presence => true
end
