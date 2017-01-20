class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.integer :start
      t.integer :end
      t.string :name
      t.string :location
      t.string :url
      t.string :holiday

      t.timestamps
    end
  end
end
