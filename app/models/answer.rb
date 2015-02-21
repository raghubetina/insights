class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :interview
  belongs_to :user

  validates :question, :presence => true
  validates :interview, :presence => true
  validates :user, :presence => true

  mount_uploader :image, ImageUploader
end
