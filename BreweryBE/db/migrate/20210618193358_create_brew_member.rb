class CreateBrewMember < ActiveRecord::Migration[6.1]
  def change
    create_table :brew_members do |t|
      t.references :member, null: false, foreign_key: true
      t.references :brewery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
