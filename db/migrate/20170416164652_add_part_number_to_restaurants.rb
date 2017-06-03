class AddPartNumberToRestaurants < ActiveRecord::Migration[5.0]
   def up
     add_column :restaurants, :avatar, :string
  end

  def down
  
  end
end
