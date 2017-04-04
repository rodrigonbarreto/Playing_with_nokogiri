class Restaurant < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
end
