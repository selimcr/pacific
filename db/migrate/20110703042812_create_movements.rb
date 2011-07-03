class CreateMovements < ActiveRecord::Migration
  def self.up
    create_table :movements do |t|
      t.integer :customer_id
      t.float :amount
      t.text :description
      t.integer :mtype
      t.datetime :created_at
    end
  end

  def self.down
    drop_table :movements
  end
end
