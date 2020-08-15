class CreateRestaurantxes < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurantxes do |t|
      t.string :name
      t.string :adress
      t.integer :stars

      t.timestamps
    end
  end
end
