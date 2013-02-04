class Post < ActiveRecord::Base
  attr_accessible :body, :title
  default_scope order('created_at DESC')
  mount_uploader :image, ImageUploader
end
