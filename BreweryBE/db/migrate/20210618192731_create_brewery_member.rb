class CreateBreweryMember < ActiveRecord::Migration[6.1]
  def change
    create_table :brewery_members do |t|
      t.references :brewery, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
