# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_01_110545) do
  create_table "answers", force: :cascade do |t|
    t.integer "user_id"
    t.string "text"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matched_answers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "session_id"
    t.integer "question_id"
    t.integer "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "guessed_user_id"
  end

  create_table "participants", force: :cascade do |t|
    t.integer "user_id"
    t.integer "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "session_questions", force: :cascade do |t|
    t.integer "session_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "title"
    t.datetime "start_time"
    t.integer "answering_duration"
    t.integer "matching_duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
