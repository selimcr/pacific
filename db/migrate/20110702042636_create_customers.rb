class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :code, :null => false
      t.string :name, :null => false
      t.datetime :date
      t.float :initial_capital, :limit => 53, :null => true
      t.float :actual_capital, :limit => 53, :null => true
      t.float :initial_month_capital, :limit => 53, :null => true
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
