class AddAttachmentAssetToRestaurants < ActiveRecord::Migration
  def self.up
    change_table :restaurants do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :restaurants, :asset
  end
end
