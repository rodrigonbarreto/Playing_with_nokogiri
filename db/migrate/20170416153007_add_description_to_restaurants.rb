class AddDescriptionToRestaurants < ActiveRecord::Migration[5.0]
  def up
    Restaurant.create_translation_table!({
      description: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Restaurant.drop_translation_table! migrate_data: true
  end
end
