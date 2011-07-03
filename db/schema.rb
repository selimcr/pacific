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

ActiveRecord::Schema.define(:version => 20110703042812) do

  create_table "activity_log", :id => false, :force => true do |t|
    t.integer "id",                            :null => false
    t.integer "trade_id",                      :null => false
    t.integer "client_id",                     :null => false
    t.date    "date",                          :null => false
    t.string  "type",            :limit => 20, :null => false
    t.string  "currency",        :limit => 10
    t.float   "exchange_rate",                 :null => false
    t.float   "amount_invested",               :null => false
    t.float   "profit"
    t.float   "percentage",                    :null => false
  end

  create_table "client", :force => true do |t|
    t.string  "code",                :limit => 10,                  :null => false
    t.string  "name",                :limit => 60,                  :null => false
    t.date    "date",                                               :null => false
    t.float   "capitalInitial",                    :default => 0.0, :null => false
    t.float   "capitalActual",                                      :null => false
    t.float   "capitalInitialMonth",                                :null => false
    t.integer "level",                                              :null => false
    t.integer "type",                                               :null => false
    t.integer "percentage",                                         :null => false
    t.integer "agent",                                              :null => false
  end

  create_table "client_account", :force => true do |t|
    t.integer  "idClient",                   :null => false
    t.float    "amount",                     :null => false
    t.string   "description", :limit => 100
    t.integer  "type",                       :null => false
    t.datetime "date",                       :null => false
  end

  create_table "client_close", :force => true do |t|
    t.integer "client_id",          :null => false
    t.date    "start_date",         :null => false
    t.date    "close_date",         :null => false
    t.float   "capital_on_close",   :null => false
    t.float   "cap_initial_period", :null => false
  end

  create_table "client_seller", :id => false, :force => true do |t|
    t.integer "idClient",   :null => false
    t.integer "idSeller",   :null => false
    t.float   "percentage", :null => false
  end

  add_index "client_seller", ["idClient", "idSeller"], :name => "idClient"

  create_table "conciliation", :force => true do |t|
    t.float    "amount",  :default => 0.0
    t.float    "fd",      :default => 0.0, :null => false
    t.datetime "date",                     :null => false
    t.float    "beg",     :default => 0.0, :null => false
    t.float    "pl",      :default => 0.0, :null => false
    t.float    "roll",    :default => 0.0, :null => false
    t.float    "nafees",  :default => 0.0, :null => false
    t.float    "ending",  :default => 0.0, :null => false
    t.float    "ote",                      :null => false
    t.float    "liqV",                     :null => false
    t.float    "mamount",                  :null => false
    t.float    "mexx",                     :null => false
    t.float    "sond",                     :null => false
    t.float    "jent",                     :null => false
    t.float    "comm",                     :null => false
  end

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

  create_table "master", :force => true do |t|
    t.date   "date",                                      :null => false
    t.string "type1",      :limit => 20,                  :null => false
    t.string "type2",      :limit => 20,                  :null => false
    t.float  "result",                   :default => 0.0, :null => false
    t.float  "percentage",               :default => 0.0, :null => false
    t.float  "fill1",                    :default => 0.0, :null => false
    t.float  "fill2",                    :default => 0.0, :null => false
  end

  create_table "masterclient", :id => false, :force => true do |t|
    t.integer "idClient", :null => false
    t.integer "idTrade",  :null => false
    t.date    "date",     :null => false
    t.float   "capital",  :null => false
    t.integer "level",    :null => false
    t.float   "income",   :null => false
  end

  create_table "movements", :force => true do |t|
    t.integer  "customer_id"
    t.float    "amount"
    t.text     "description"
    t.integer  "mtype"
    t.datetime "created_at"
  end

  create_table "profile", :force => true do |t|
    t.string  "name",    :limit => 100, :null => false
    t.integer "writer",                 :null => false
    t.integer "readr",                  :null => false
    t.integer "searchr",                :null => false
    t.integer "enable",                 :null => false
  end

  create_table "seller", :force => true do |t|
    t.string "name",    :limit => 30, :null => false
    t.float  "account",               :null => false
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

  create_table "trade", :id => false, :force => true do |t|
    t.integer "id",                                             :null => false
    t.integer "master_id",                                      :null => false
    t.date    "filldate",                                       :null => false
    t.string  "type",            :limit => 30,                  :null => false
    t.string  "ticketBuy",       :limit => 20, :default => "0", :null => false
    t.string  "ticketSell",      :limit => 20, :default => "0", :null => false
    t.float   "long",                          :default => 0.0, :null => false
    t.float   "short",                         :default => 0.0, :null => false
    t.string  "pair",            :limit => 11,                  :null => false
    t.float   "fillBuy",                       :default => 0.0, :null => false
    t.float   "fillSell",                      :default => 0.0, :null => false
    t.float   "exRt"
    t.float   "counterCurrBuy",                                 :null => false
    t.float   "counterCurrSell",                                :null => false
    t.float   "result",                                         :null => false
    t.integer "first_trade",     :limit => 1
  end

  create_table "user", :force => true do |t|
    t.integer "type",                    :null => false
    t.string  "name",     :limit => 100, :null => false
    t.string  "login",    :limit => 30,  :null => false
    t.string  "password", :limit => 50,  :null => false
    t.string  "email",    :limit => 100
    t.integer "enable",                  :null => false
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
