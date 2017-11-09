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

ActiveRecord::Schema.define(version: 20171109062638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id"
    t.string "commentable_type"
    t.bigint "commentable_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "competences", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
  end

  create_table "compies", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "competence_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competence_id"], name: "index_compies_on_competence_id"
    t.index ["user_id", "competence_id"], name: "index_compies_on_user_id_and_competence_id", unique: true
    t.index ["user_id"], name: "index_compies_on_user_id"
  end

  create_table "concepts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "term_id"
    t.float "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "compy_id"
    t.index ["compy_id"], name: "index_concepts_on_compy_id"
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
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "admin", default: false, comment: "Признак, является ли пользователь администратором либо же нет"
    t.string "token"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "users"
  add_foreign_key "compies", "competences"
  add_foreign_key "compies", "users"
  add_foreign_key "concepts", "compies"
  add_foreign_key "skills", "instructions"
  add_foreign_key "skills", "users"
  add_foreign_key "terms", "competences"
end
