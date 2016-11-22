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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161122102040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date     "date"
    t.integer  "number"
    t.integer  "user_id"
    t.integer  "nest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nest_id"], name: "index_bookings_on_nest_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "crews", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "country"
    t.string   "address"
    t.string   "social_issue"
    t.string   "mission"
    t.date     "creation_date"
    t.text     "description"
    t.integer  "nb_collaborators"
    t.text     "team_description"
    t.string   "phone"
    t.string   "skype"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "website"
    t.text     "values"
    t.integer  "credit_count"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "missions", force: :cascade do |t|
    t.string   "title"
    t.string   "duration"
    t.text     "skill"
    t.text     "description"
    t.integer  "hours_per_day"
    t.integer  "days_per_week"
    t.text     "hosting_condition"
    t.string   "food"
    t.text     "other_comment"
    t.string   "country"
    t.string   "city"
    t.string   "address"
    t.integer  "crew_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["crew_id"], name: "index_missions_on_crew_id", using: :btree
  end

  create_table "nests", force: :cascade do |t|
    t.integer  "max_capacity"
    t.time     "opening_hour",    default: '2000-01-01 08:00:00'
    t.time     "closing_hour",    default: '2000-01-01 17:00:00'
    t.integer  "price"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "zip_code"
    t.boolean  "wifi"
    t.boolean  "printer"
    t.boolean  "coffee"
    t.boolean  "tea"
    t.boolean  "microwave"
    t.text     "description"
    t.text     "other_equipment"
    t.boolean  "phoning_room"
    t.datetime "created_at",                                                                                                                     null: false
    t.datetime "updated_at",                                                                                                                     null: false
    t.integer  "user_id"
    t.string   "photo",           default: "http://res.cloudinary.com/pack-your-skills/image/upload/v1479464093/nest-918898_960_720_xmlpk8.jpg"
    t.float    "latitude"
    t.float    "longitude"
    t.index ["user_id"], name: "index_nests_on_user_id", using: :btree
  end

  create_table "timeslots", force: :cascade do |t|
    t.date     "date"
    t.integer  "capacity"
    t.integer  "nest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nest_id"], name: "index_timeslots_on_nest_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                                                                                           null: false
    t.string   "encrypted_password",     default: "",                                                                                           null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                                                                                            null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                                                                                                    null: false
    t.datetime "updated_at",                                                                                                                    null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "job"
    t.string   "phone"
    t.string   "skype"
    t.string   "sexe"
    t.string   "quote"
    t.string   "dream_coworker"
    t.string   "song"
    t.string   "cv"
    t.date     "birthdate"
    t.text     "story"
    t.boolean  "host"
    t.string   "address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "country"
    t.string   "website"
    t.string   "photo",                  default: "http://res.cloudinary.com/pack-your-skills/image/upload/v1479466113/avatar-coco_b2fb49.png"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "wishes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "nest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nest_id"], name: "index_wishes_on_nest_id", using: :btree
    t.index ["user_id"], name: "index_wishes_on_user_id", using: :btree
  end

  add_foreign_key "bookings", "nests"
  add_foreign_key "bookings", "users"
  add_foreign_key "missions", "crews"
  add_foreign_key "nests", "users"
  add_foreign_key "timeslots", "nests"
  add_foreign_key "wishes", "nests"
  add_foreign_key "wishes", "users"
end
