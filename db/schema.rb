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

ActiveRecord::Schema.define(version: 2019_03_18_151903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "case_studies", force: :cascade do |t|
  end

  create_table "employers", force: :cascade do |t|
    t.string "company_name"
    t.string "contact_name"
    t.string "message"
    t.string "email", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_influencers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "phone_number"
    t.string "language_spoken"
    t.string "degree_subject"
    t.string "university"
    t.boolean "industrial_placement"
    t.string "reason_to_be_ambassador"
    t.string "social_media"
    t.string "current_university_year"
    t.string "home_postcode"
    t.boolean "can_work_in_uk"
    t.string "gender"
    t.string "ethnicity"
    t.string "school_or_college_type"
    t.string "free_school_meals"
    t.string "sexuality"
    t.string "parents_university_attendance"
    t.string "disabled_or_handicap"
    t.boolean "mailing_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
