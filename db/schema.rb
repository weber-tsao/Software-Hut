# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_12_200748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additional_actions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "answer_option_id", null: false
    t.bigint "task_id", null: false
    t.index ["answer_option_id"], name: "index_additional_actions_on_answer_option_id"
    t.index ["task_id"], name: "index_additional_actions_on_task_id"
  end

  create_table "alerts", force: :cascade do |t|
    t.integer "UserID"
    t.date "Date"
    t.string "Text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "answer_options", force: :cascade do |t|
    t.string "answer_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "question_id", null: false
    t.index ["question_id"], name: "index_answer_options_on_question_id"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "performances", force: :cascade do |t|
    t.decimal "KPI1", default: "0.0"
    t.decimal "KPI2", default: "0.0"
    t.decimal "KPI3", default: "0.0"
    t.decimal "KPI4", default: "0.0"
    t.decimal "KPI5", default: "0.0"
    t.decimal "KPI6", default: "0.0"
    t.string "current_credit", default: ""
    t.string "credit_threshold", default: ""
    t.string "initial_credit", default: ""
    t.string "current_risk", default: ""
    t.string "initial_risk", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "vendor_id", null: false
    t.index ["vendor_id"], name: "index_performances_on_vendor_id"
  end

  create_table "question_sets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "question_set_id", null: false
    t.index ["question_set_id"], name: "index_questions_on_question_set_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "task_allocations", force: :cascade do |t|
    t.boolean "completed", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "task_id", null: false
    t.bigint "vendor_id", null: false
    t.index ["task_id"], name: "index_task_allocations_on_task_id"
    t.index ["vendor_id"], name: "index_task_allocations_on_vendor_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_type"
    t.string "task_name"
    t.string "link", default: ""
    t.string "file_title"
    t.date "deadline"
    t.boolean "needs_approval"
    t.boolean "initial_task"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks_vendors", id: false, force: :cascade do |t|
    t.bigint "vendor_id", null: false
    t.bigint "task_id", null: false
    t.boolean "completed", default: false
    t.index ["task_id", "vendor_id"], name: "index_tasks_vendors_on_task_id_and_vendor_id"
    t.index ["vendor_id", "task_id"], name: "index_tasks_vendors_on_vendor_id_and_task_id"
  end

  create_table "upload_files", force: :cascade do |t|
    t.string "title"
    t.date "date_uploaded"
    t.string "attachment", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "vendor_id", null: false
    t.bigint "task_allocation_id", null: false
    t.index ["task_allocation_id"], name: "index_upload_files_on_task_allocation_id"
    t.index ["vendor_id"], name: "index_upload_files_on_vendor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "account_type", default: "", null: false
    t.boolean "active", default: false, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendor_assignments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "vendor_id", null: false
    t.index ["user_id"], name: "index_vendor_assignments_on_user_id"
    t.index ["vendor_id"], name: "index_vendor_assignments_on_vendor_id"
  end

  create_table "vendor_responses", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "question_id", null: false
    t.bigint "answer_option_id", null: false
    t.bigint "vendor_id", null: false
    t.index ["answer_option_id"], name: "index_vendor_responses_on_answer_option_id"
    t.index ["question_id"], name: "index_vendor_responses_on_question_id"
    t.index ["vendor_id"], name: "index_vendor_responses_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "company_number"
    t.string "legal_address"
    t.string "jurisdiction"
    t.string "service_type"
    t.string "contact_number"
    t.string "director"
    t.boolean "approved", default: false
    t.bigint "user_id", null: false
    t.index ["company_number"], name: "index_vendors_on_company_number", unique: true
    t.index ["name"], name: "index_vendors_on_name", unique: true
    t.index ["user_id"], name: "index_vendors_on_user_id"
  end

  add_foreign_key "additional_actions", "answer_options"
  add_foreign_key "additional_actions", "tasks"
  add_foreign_key "answer_options", "questions"
  add_foreign_key "performances", "vendors"
  add_foreign_key "questions", "question_sets"
  add_foreign_key "task_allocations", "tasks"
  add_foreign_key "task_allocations", "vendors"
  add_foreign_key "upload_files", "task_allocations"
  add_foreign_key "upload_files", "vendors"
  add_foreign_key "vendor_assignments", "users"
  add_foreign_key "vendor_assignments", "vendors"
  add_foreign_key "vendor_responses", "answer_options"
  add_foreign_key "vendor_responses", "questions"
  add_foreign_key "vendor_responses", "vendors"
  add_foreign_key "vendors", "users"
end
