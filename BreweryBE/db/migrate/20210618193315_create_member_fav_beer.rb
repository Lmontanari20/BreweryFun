class CreateMemberFavBeer < ActiveRecord::Migration[6.1]
  def change
    create_table :member_fav_beers do |t|
      t.references :member, null: false, foreign_key: true
      t.references :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
