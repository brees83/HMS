# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130926185919) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "customer_profiles", :force => true do |t|
    t.string   "customer_name"
    t.date     "start_date"
    t.date     "renewal_date"
    t.string   "primary_contact_email"
    t.string   "secondary_contact_email"
    t.integer  "phone_contact"
    t.integer  "fax_contact"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "customer_type"
    t.integer  "caseload_maximum"
    t.boolean  "active"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.time     "Timezone"
  end

  create_table "preferences", :force => true do |t|
    t.boolean  "voice"
    t.boolean  "text"
    t.boolean  "email"
    t.string   "msg_pref"
    t.datetime "created_at",                                                       :null => false
    t.datetime "updated_at",                                                       :null => false
    t.integer  "customer_profile_id"
    t.string   "timezone"
    t.boolean  "holiday_new_year",              :default => true
    t.boolean  "holiday_martin_luther_king_jr", :default => true
    t.boolean  "holiday_presidents",            :default => true
    t.boolean  "holiday_memorial",              :default => true
    t.boolean  "holiday_independence",          :default => true
    t.boolean  "holiday_labor",                 :default => true
    t.boolean  "holiday_columbus",              :default => true
    t.boolean  "holiday_veterans",              :default => true
    t.boolean  "holiday_thanksgiving",          :default => true
    t.boolean  "holiday_christmas",             :default => true
    t.date     "added_holiday_1"
    t.date     "added_holiday_2"
    t.date     "added_holiday_3"
    t.date     "added_holiday_4"
    t.date     "added_holiday_5"
    t.date     "added_holiday_6"
    t.date     "added_holiday_7"
    t.boolean  "sunday_send",                   :default => true
    t.time     "sunday_start",                  :default => '2000-01-01 10:00:00'
    t.time     "sunday_end",                    :default => '2000-01-01 18:00:00'
    t.boolean  "monday_send",                   :default => true
    t.time     "monday_start",                  :default => '2000-01-01 09:00:00'
    t.time     "monday_end",                    :default => '2000-01-01 20:00:00'
    t.boolean  "tuesday_send",                  :default => true
    t.time     "tuesday_start",                 :default => '2000-01-01 09:00:00'
    t.time     "tuesday_end",                   :default => '2000-01-01 20:00:00'
    t.boolean  "wednesday_send",                :default => true
    t.time     "wednesday_start",               :default => '2000-01-01 09:00:00'
    t.time     "wednesday_end",                 :default => '2000-01-01 20:00:00'
    t.boolean  "thursday_send",                 :default => true
    t.time     "thursday_start",                :default => '2000-01-01 09:00:00'
    t.time     "thursday_end",                  :default => '2000-01-01 20:00:00'
    t.boolean  "friday_send",                   :default => true
    t.time     "friday_start",                  :default => '2000-01-01 09:00:00'
    t.time     "friday_end",                    :default => '2000-01-01 20:00:00'
    t.boolean  "saturday_send",                 :default => true
    t.time     "saturday_start",                :default => '2000-01-01 10:00:00'
    t.time     "saturday_end",                  :default => '2000-01-01 18:00:00'
  end

  add_index "preferences", ["customer_profile_id"], :name => "index_preferences_on_customer_profile_id"

end
