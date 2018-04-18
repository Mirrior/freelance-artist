class CreatePrints < ActiveRecord::Migration[5.1]
  def change
    create_table :prints do |t|
      t.string :title
      t.text :description
      t.float :price
      t.integer :in_stock, default: 0
      t.text :image_url

      t.timestamps
    end
  end
end
