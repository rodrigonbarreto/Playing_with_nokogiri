class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.references :restaurant, foreign_key: true
      t.attachment :asset
      t.timestamps
    end
  end
end
