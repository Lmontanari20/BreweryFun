class CreateMember < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :age
      t.string :favBeer
      t.text :bio

      t.timestamps
    end
  end
end
