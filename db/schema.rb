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

ActiveRecord::Schema.define(:version => 20121108210813) do

  create_table "add_infos", :force => true do |t|
    t.string   "name"
    t.integer  "noc_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "add_infos", ["noc_id"], :name => "index_add_infos_on_noc_id"

  create_table "designations", :force => true do |t|
    t.string   "name"
    t.integer  "noc_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "designations", ["noc_id"], :name => "index_designations_on_noc_id"

  create_table "duties", :force => true do |t|
    t.string   "name"
    t.integer  "noc_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "duties", ["noc_id"], :name => "index_duties_on_noc_id"

  create_table "duty_left_branches", :force => true do |t|
    t.string   "name"
    t.integer  "noc_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "duty_left_branches", ["noc_id"], :name => "index_duty_left_branches_on_noc_id"

  create_table "duty_right_branches", :force => true do |t|
    t.string   "name"
    t.integer  "noc_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "duty_right_branches", ["noc_id"], :name => "index_duty_right_branches_on_noc_id"

  create_table "nocs", :force => true do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "nocs_requirements", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "requirements", :force => true do |t|
    t.string   "name"
    t.integer  "noc_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "requirements", ["noc_id"], :name => "index_requirements_on_noc_id"

  create_table "titles", :force => true do |t|
    t.string   "name"
    t.integer  "noc_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "titles", ["noc_id"], :name => "index_titles_on_noc_id"

end
