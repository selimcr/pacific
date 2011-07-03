class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :code, :null => false
      t.string :name, :null => false
      t.datetime :date
      t.float :initial_capital
      t.float :actual_capital
      t.float :initial_month_capital
      t.integer :level
      t.integer :ctype
      t.integer :percentage
      t.integer :agent
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
