class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :interview
  belongs_to :user

  mount_uploader :image, ImageUploader
end
