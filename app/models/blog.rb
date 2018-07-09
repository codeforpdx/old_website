class Blog < ApplicationRecord
  validates_presence_of :title, :text
  mount_uploader :img, BlogUploader
  
end
