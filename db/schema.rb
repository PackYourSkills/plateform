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

ActiveRecord::Schema.define(version: 20161123153726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.text     "message"
    t.string   "status"
    t.integer  "packer_id"
    t.integer  "mission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mission_id"], name: "index_applications_on_mission_id", using: :btree
    t.index ["packer_id"], name: "index_applications_on_packer_id", using: :btree
  end

  create_table "crews", force: :cascade do |t|
    t.string   "name"
    t.string   "social_issue"
    t.string   "mission"
    t.date     "creation_date"
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
    t.integer  "user_id"
    t.index ["user_id"], name: "index_crews_on_user_id", using: :btree
  end

  create_table "educations", force: :cascade do |t|
    t.string   "degree"
    t.string   "school"
    t.date     "end_time"
    t.string   "field"
    t.integer  "packer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["packer_id"], name: "index_educations_on_packer_id", using: :btree
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "type"
    t.date     "start_time"
    t.date     "end_time"
    t.string   "organisation"
    t.string   "position"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
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

  create_table "packers", force: :cascade do |t|
    t.string   "sexe"
    t.string   "nationality"
    t.string   "phone"
    t.string   "skype"
    t.string   "youtube_link"
    t.string   "website"
    t.string   "cv_link"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.string   "job"
    t.index ["user_id"], name: "index_packers_on_user_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "title"
    t.string   "level"
    t.string   "type_of_skill"
    t.integer  "packer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["packer_id"], name: "index_skills_on_packer_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.text     "story"
    t.string   "address"
    t.string   "country"
    t.string   "city"
    t.string   "zip_code"
    t.date     "birthdate"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "applications", "missions"
  add_foreign_key "applications", "packers"
  add_foreign_key "crews", "users"
  add_foreign_key "educations", "packers"
  add_foreign_key "missions", "crews"
  add_foreign_key "packers", "users"
  add_foreign_key "skills", "packers"
end
