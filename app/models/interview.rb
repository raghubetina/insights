class Interview < ActiveRecord::Base
  belongs_to :user
  belongs_to :persona
  has_many :answers
end
