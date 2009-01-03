# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080820014608) do

  create_table "comments", :force => true do |t|
    t.integer  "episode_id", :limit => 11
    t.text     "content"
    t.string   "name"
    t.string   "email"
    t.string   "site_url"
    t.string   "user_ip"
    t.string   "user_agent"
    t.string   "referrer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",   :limit => 11
  end

  add_index "comments", ["episode_id"], :name => "index_comments_on_episode_id"

  create_table "downloads", :force => true do |t|
    t.integer  "episode_id", :limit => 11
    t.string   "url"
    t.string   "format"
    t.integer  "bytes",      :limit => 11
    t.integer  "seconds",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "downloads", ["episode_id"], :name => "index_downloads_on_episode_id"

  create_table "episodes", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.text     "description"
    t.text     "notes"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",       :limit => 11, :default => 0
    t.integer  "comments_count", :limit => 11, :default => 0, :null => false
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.boolean  "active",     :default => false, :null => false
    t.string   "site_url"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "episode_id", :limit => 11
    t.integer  "tag_id",     :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["episode_id"], :name => "index_taggings_on_episode_id"
  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
