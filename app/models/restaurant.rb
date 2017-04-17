class Restaurant < ApplicationRecord
	#mount_uploader :avatar, AvatarUploader
	translates :description
  accepts_nested_attributes_for :translations, allow_destroy: true
	validates :name, presence: true
  has_many :galleries, :dependent => :destroy

	has_attached_file :asset,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method: 
  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }



end
