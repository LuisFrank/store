class CreateFlowers < ActiveRecord::Migration[5.2]
  def change
    create_table :flowers do |t|
      t.string :brand
      t.string :model
      t.string :description
      t.string :condition
      t.string :finish
      t.string :title
      t.decimal :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
