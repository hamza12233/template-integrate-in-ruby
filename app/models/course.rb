class Course < ApplicationRecord
  has_many :user_courses
  has_many :users, through: :user_courses

  
  validates :name,presence:true
  validates :description,presence:true
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.  

end
