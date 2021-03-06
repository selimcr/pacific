# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110704015959) do

  create_table "csassociations", :id => false, :force => true do |t|
    t.integer "customer_id"
    t.integer "seller_id"
    t.float   "percentage"
  end

  create_table "customers", :force => true do |t|
    t.string   "code",                  :null => false
    t.string   "name",                  :null => false
    t.datetime "date"
    t.float    "initial_capital"
    t.float    "actual_capital"
    t.float    "initial_month_capital"
    t.integer  "level"
    t.integer  "ctype"
    t.integer  "percentage"
    t.integer  "agent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "masters", :force => true do |t|
    t.datetime "date"
    t.string   "type1"
    t.string   "type2"
    t.float    "result"
    t.float    "percentage"
    t.float    "fill1"
    t.float    "fill2"
  end

  create_table "movements", :force => true do |t|
    t.integer  "customer_id"
    t.float    "amount"
    t.text     "description"
    t.integer  "mtype"
    t.datetime "created_at"
  end

  create_table "sellers", :force => true do |t|
    t.string   "name",                        :null => false
    t.float    "account",    :default => 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "trades", :force => true do |t|
    t.integer  "master_id"
    t.datetime "filldate"
    t.string   "mtype"
    t.string   "ticketBuy"
    t.string   "ticketSell"
    t.float    "long_t"
    t.float    "short_t"
    t.string   "pair"
    t.float    "fillBuy"
    t.float    "fillSell"
    t.float    "exRt"
    t.float    "counterCurrBuy"
    t.float    "counterCurrSell"
    t.float    "result"
    t.integer  "first_trade"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                                 :null => false
    t.string   "crypted_password",                      :null => false
    t.string   "password_salt",                         :null => false
    t.string   "email",                                 :null => false
    t.string   "persistence_token",                     :null => false
    t.string   "single_access_token",                   :null => false
    t.string   "perishable_token",                      :null => false
    t.string   "role"
    t.string   "name",                :default => "",   :null => false
    t.boolean  "enable",              :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
