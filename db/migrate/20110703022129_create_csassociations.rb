class CreateCsassociations < ActiveRecord::Migration
  def self.up
    create_table :csassociations, :id => false do |t|      
      t.integer :customer_id
      t.integer :seller_id
      t.float :percentage
    end
  end

  def self.down
    drop_table :csassociations
  end
end
