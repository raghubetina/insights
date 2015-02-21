class Interview < ActiveRecord::Base
  belongs_to :user
  belongs_to :persona
  has_many :answers

  validates :name, :presence => true
  validates :user, :presence => true
  validates :persona, :presence => true
  validates :held_on, :presence => true
end
