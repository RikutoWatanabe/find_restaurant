class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.time :start
      t.time :end
      t.string :name
      t.string :location
      t.string :url

      t.timestamps
    end
  end
end
