class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :id
      t.string :name
      t.integer :price
    end
  end
end
