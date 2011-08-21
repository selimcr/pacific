class CreateMasters < ActiveRecord::Migration
  def self.up
    create_table :masters do |t|
      t.datetime :date
      t.string :type1
      t.string :type2
      t.float :result, :limit => 53, :null => true
      t.float :percentage, :limit => 53, :null => true
      t.float :fill1, :limit => 53, :null => true
      t.float :fill2, :limit => 53, :null => true
    end
  end

  def self.down
    drop_table :masters
  end
end
