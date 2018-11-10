class AddImagesToFlowers < ActiveRecord::Migration[5.2]
  def change
    add_column :flowers, :images, :json
  end
end
