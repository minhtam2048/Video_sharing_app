class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :video, VideoUploader
end
