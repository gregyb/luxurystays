class CreateVillas < ActiveRecord::Migration[5.1]
  def change
    create_table :villas do |t|
      t.string :title
      t.text :description
      t.string :city
      t.integer :price
      t.string :picture

      t.timestamps
    end
  end
end
