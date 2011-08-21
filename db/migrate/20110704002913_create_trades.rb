class CreateTrades < ActiveRecord::Migration
  def self.up
    create_table :trades do |t|
      t.integer :master_id
      t.datetime :filldate
      t.string :mtype
      t.string :ticketBuy
      t.string :ticketSell
      t.float :long_t, :limit => 53, :null => true
      t.float :short_t, :limit => 53, :null => true
      t.string :pair
      t.float :fillBuy, :limit => 53, :null => true
      t.float :fillSell, :limit => 53, :null => true
      t.float :exRt, :limit => 53, :null => true
      t.float :counterCurrBuy, :limit => 53, :null => true
      t.float :counterCurrSell, :limit => 53, :null => true
      t.float :result, :limit => 53, :null => true
      t.integer :first_trade      
    end
  end

  def self.down
    drop_table :trades
  end
end
