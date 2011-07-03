class CreateUsers < ActiveRecord::Migration 
  def self.up 
    create_table :users do |t|       
      t.string :login, :null => false # optional, see below 
      t.string :crypted_password, :null => false # optional, see below 
      t.string :password_salt, :null => false # optional, but highly recommended 
      t.string :email, :null => false # optional, you can use login instead, or both 
      t.string :persistence_token, :null => false # required 
      t.string :single_access_token, :null => false # optional, see Authlogic::Session::Params 
      t.string :perishable_token, :null => false # optional, see Authlogic::Session::Perishability # Magic columns, just like ActiveRecord's created_at and updated_at. These are automatically maintained by Authlogic if they are present. t.integer :login_count, :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns t.integer :failed_login_count, :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns t.datetime :last_request_at # optional, see Authlogic::Session::MagicColumns t.datetime :current_login_at # optional, see Authlogic::Session::MagicColumns t.datetime :last_login_at # optional, see Authlogic::Session::MagicColumns t.string :current_login_ip # optional, see Authlogic::Session::MagicColumns t.string :last_login_ip # optional, see Authlogic::Session::MagicColumns 
      t.string :role
      t.string :name, :null => false, :default => '' 
      t.boolean :enable, :default => true 
      t.timestamps 
    end 
    
    ActiveRecord::Base.connection.execute("insert into users (login, crypted_password, password_salt, email, persistence_token, single_access_token, perishable_token, role, name, enable, created_at, updated_at) values ('admin', '8759652df6a63358948c143e9226a539b05c7c5afb104d4ba3af52549fc8c7d22aedf06f7efd7275a0e53c4b5feef40d27a1368573a73613a9ca43ab1aa27e2f', 'oKe1p2PE6fNmvUE6gvyA', 'pacific.seda@gmail.com', '308e1ff28ea4d67c0c294f5a26776190a13660bbd4e60a62db5a397b566dbf5b9951160f7a6a40e888c81d546037f44484c43d02949e97f9b8cff2c841a9b2e8', 'j3JjEZVlkAq6OVICASC', 'VCyNushzq8dsxVl06', 'admin', 'Administrador', '1', '2011-06-28 04:07:30', '2011-07-02 22:08:35')")
  end 
  def self.down 
    drop_table :users 
  end 
end
