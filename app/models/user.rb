class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_many :posts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # User avatar validation
  validates_integrity_of :avatar
  validates_processing_of :avatar

  private
    def avatar_size_validation
      errors[:avatar] << "Should be less than 1MB" if avatar.size > 1.megabytes
    end
end
