class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.references :category, foreign_key: true
      t.string :publisher
      t.string :author
      t.string :name
      t.text :content
      t.integer :num_of_pages
      t.integer :year
      t.integer :quantity, default: 0, null: false
      t.integer :price
      t.string :image
      t.timestamps
    end
  end
end
