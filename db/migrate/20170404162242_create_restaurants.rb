class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :avatar
      t.boolean :chosen, :default => false 

      t.timestamps
    end
  end
end
