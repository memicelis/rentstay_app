class CreateHouses < ActiveRecord::Migration[7.1]
  def change
    create_table :houses do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.boolean :availability

      t.timestamps
    end
  end
end
