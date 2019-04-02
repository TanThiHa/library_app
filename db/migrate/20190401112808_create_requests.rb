class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.integer :quantity
      t.date :from_date
      t.date :to_date
      t.date :real_date
      t.boolean :out_date
      t.float :rental
      t.float :forfeit
      t.boolean :damage
      t.boolean :miss
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
