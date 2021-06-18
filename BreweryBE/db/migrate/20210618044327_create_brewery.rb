class CreateBrewery < ActiveRecord::Migration[6.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :city
      t.string :address
      t.boolean :food
      t.boolean :twentyone
      t.boolean :dog

      t.timestamps
    end
  end
end
