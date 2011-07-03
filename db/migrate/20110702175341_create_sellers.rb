class CreateSellers < ActiveRecord::Migration
  def self.up
    create_table :sellers do |t|
      t.string :name, :null => false
      t.float :account, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :sellers
  end
end
