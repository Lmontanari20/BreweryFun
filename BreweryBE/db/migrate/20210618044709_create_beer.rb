class CreateBeer < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.references :brewery, null: false, foreign_key: true
      t.string :type
      t.float :alc

      t.timestamps
    end
  end
end
