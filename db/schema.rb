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

ActiveRecord::Schema.define(:version => 20110201210700) do

  create_table "beer_brands", :force => true do |t|
    t.integer   "image_id"
    t.string    "main_category"
    t.string    "sub_category"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "beer_brands", ["id"], :name => "index_beer_brands_on_id"

  create_table "brewers", :force => true do |t|
    t.integer   "first_image_id"
    t.integer   "second_image_id"
    t.string    "company"
    t.string    "website_url"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "brewers", ["id"], :name => "index_brewers_on_id"

  create_table "donation_requests", :force => true do |t|
    t.string    "event_region"
    t.string    "event_name"
    t.string    "event_location"
    t.text      "event_address"
    t.string    "expected_attendence"
    t.string    "event_contact_name"
    t.string    "event_contact_number"
    t.string    "event_contact_email"
    t.string    "event_concessionaire"
    t.string    "event_concessionaire_phone"
    t.string    "charity_501c3"
    t.string    "wine_spirits_served"
    t.text      "additional_comments"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "donation_requests", ["id"], :name => "index_donation_requests_on_id"

  create_table "events", :force => true do |t|
    t.string    "title"
    t.integer   "image_id"
    t.text      "description"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "events", ["id"], :name => "index_events_on_id"

  create_table "fields", :force => true do |t|
    t.string  "field"
    t.boolean "required"
  end

  add_index "fields", ["id"], :name => "index_fields_on_id"

  create_table "for_brewers", :force => true do |t|
    t.string    "title"
    t.integer   "ogg_file_id"
    t.integer   "m4v_file_id"
    t.integer   "display_image_id"
    t.text      "text"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "vimeo_url"
  end

  add_index "for_brewers", ["id"], :name => "index_for_brewers_on_id"

  create_table "for_retailers", :force => true do |t|
    t.string    "title"
    t.integer   "ogg_file_id"
    t.integer   "m4v_file_id"
    t.integer   "display_image_id"
    t.text      "text"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "vimeo_url"
  end

  add_index "for_retailers", ["id"], :name => "index_for_retailers_on_id"

  create_table "form_fields", :force => true do |t|
    t.boolean "event_name"
    t.boolean "event_location"
    t.boolean "event_address"
    t.boolean "expected_attendence"
    t.boolean "event_contact_name"
    t.boolean "event_contact_number"
    t.boolean "event_concessionaire"
    t.boolean "event_concessionaire_phone"
    t.boolean "charity_501c3"
    t.boolean "event_contact_email"
    t.boolean "additional_comments"
  end

  create_table "homepage_images", :force => true do |t|
    t.string    "title"
    t.integer   "image_id"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "homepage_images", ["id"], :name => "index_homepage_images_on_id"

  create_table "images", :force => true do |t|
    t.string    "image_mime_type"
    t.string    "image_name"
    t.integer   "image_size"
    t.integer   "image_width"
    t.integer   "image_height"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "image_uid"
    t.string    "image_ext"
  end

  create_table "inquiries", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "phone"
    t.text      "message"
    t.integer   "position"
    t.boolean   "open",       :default => true
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "spam",       :default => false
    t.string    "last_name"
    t.string    "title"
    t.string    "company"
    t.string    "site"
  end

  create_table "inquiry_settings", :force => true do |t|
    t.string    "name"
    t.text      "value"
    t.boolean   "destroyable"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "logos", :force => true do |t|
    t.string    "title"
    t.integer   "image_id"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "logos", ["id"], :name => "index_logos_on_id"

  create_table "managements", :force => true do |t|
    t.string    "title"
    t.string    "name"
    t.integer   "thumb_image_id"
    t.integer   "main_image_id"
    t.text      "bio"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.text      "teaser"
  end

  add_index "managements", ["id"], :name => "index_managements_on_id"

  create_table "page_parts", :force => true do |t|
    t.integer   "page_id"
    t.string    "title"
    t.text      "body"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "page_parts", ["id"], :name => "index_page_parts_on_id"
  add_index "page_parts", ["page_id"], :name => "index_page_parts_on_page_id"

  create_table "pages", :force => true do |t|
    t.string    "title"
    t.integer   "parent_id"
    t.integer   "position"
    t.string    "path"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "meta_keywords"
    t.text      "meta_description"
    t.boolean   "show_in_menu",        :default => true
    t.string    "link_url"
    t.string    "menu_match"
    t.boolean   "deletable",           :default => true
    t.string    "custom_title"
    t.string    "custom_title_type",   :default => "none"
    t.boolean   "draft",               :default => false
    t.string    "browser_title"
    t.boolean   "skip_to_first_child", :default => false
    t.integer   "lft"
    t.integer   "rgt"
    t.integer   "depth"
    t.string    "cached_slug"
  end

  add_index "pages", ["depth"], :name => "index_pages_on_depth"
  add_index "pages", ["id"], :name => "index_pages_on_id"
  add_index "pages", ["lft"], :name => "index_pages_on_lft"
  add_index "pages", ["parent_id"], :name => "index_pages_on_parent_id"
  add_index "pages", ["rgt"], :name => "index_pages_on_rgt"

  create_table "portfolio_images", :force => true do |t|
    t.string    "title"
    t.integer   "image_id"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "portfolio_images", ["id"], :name => "index_portfolio_images_on_id"

  create_table "refinery_settings", :force => true do |t|
    t.string    "name"
    t.text      "value"
    t.boolean   "destroyable",             :default => true
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "scoping"
    t.boolean   "restricted",              :default => false
    t.string    "callback_proc_as_string"
    t.string    "form_value_type"
  end

  add_index "refinery_settings", ["name"], :name => "index_refinery_settings_on_name"

  create_table "regions", :force => true do |t|
    t.string    "title"
    t.string    "email"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "regions", ["id"], :name => "index_regions_on_id"

  create_table "resources", :force => true do |t|
    t.string    "file_mime_type"
    t.string    "file_name"
    t.integer   "file_size"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "file_uid"
    t.string    "file_ext"
  end

  create_table "roles", :force => true do |t|
    t.string "title"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "roles_users", ["role_id", "user_id"], :name => "index_roles_users_on_role_id_and_user_id"
  add_index "roles_users", ["user_id", "role_id"], :name => "index_roles_users_on_user_id_and_role_id"

  create_table "slugs", :force => true do |t|
    t.string    "name"
    t.integer   "sluggable_id"
    t.integer   "sequence",                     :default => 1, :null => false
    t.string    "sluggable_type", :limit => 40
    t.string    "scope",          :limit => 40
    t.timestamp "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "scope", "sequence"], :name => "index_slugs_on_name_and_sluggable_type_and_scope_and_sequence", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "user_plugins", ["name"], :name => "index_user_plugins_on_title"
  add_index "user_plugins", ["user_id", "name"], :name => "index_unique_user_plugins", :unique => true

  create_table "users", :force => true do |t|
    t.string    "login",             :null => false
    t.string    "email",             :null => false
    t.string    "crypted_password",  :null => false
    t.string    "password_salt",     :null => false
    t.string    "persistence_token"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "perishable_token"
  end

  add_index "users", ["id"], :name => "index_users_on_id"

  create_table "whats_new_stories", :force => true do |t|
    t.string    "title"
    t.integer   "thumbnail_id"
    t.integer   "image_id"
    t.text      "text"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "active",       :default => true
    t.boolean   "float",        :default => true
    t.text      "teaser"
  end

  add_index "whats_new_stories", ["id"], :name => "index_whats_new_stories_on_id"

end
