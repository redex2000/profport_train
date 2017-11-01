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

ActiveRecord::Schema.define(version: 20171101180245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competences", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concepts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "term_id"
    t.float "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["term_id"], name: "index_concepts_on_term_id"
    t.index ["user_id", "term_id"], name: "index_concepts_on_user_id_and_term_id", unique: true
    t.index ["user_id"], name: "index_concepts_on_user_id"
  end

  create_table "instructions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "instruction_id"
    t.float "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instruction_id"], name: "index_skills_on_instruction_id"
    t.index ["user_id"], name: "index_skills_on_user_id"
  end

  create_table "terms", force: :cascade do |t|
    t.string "title", null: false
    t.text "definition", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "competence_id"
    t.index ["competence_id"], name: "index_terms_on_competence_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 50
    t.string "password", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "skills", "instructions"
  add_foreign_key "skills", "users"
  add_foreign_key "terms", "competences"
end
