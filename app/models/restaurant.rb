class Restaurant < ApplicationRecord
	mount_uploader :avatar, AvatarUploader

		validates :name, :avatar, presence: true
		

end
