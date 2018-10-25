class AddImageToFlowers < ActiveRecord::Migration[5.2]
  def change
    add_column :flowers, :image, :string
  end
end
