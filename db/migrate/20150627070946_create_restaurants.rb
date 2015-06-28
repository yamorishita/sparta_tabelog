class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.integer :phone_number
      t.string :address
      t.string :url

      t.timestamps null: false
    end
  end
end
