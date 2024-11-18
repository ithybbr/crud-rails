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

ActiveRecord::Schema[8.0].define(version: 0) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "country", primary_key: "cname", id: { type: :string, limit: 50 }, force: :cascade do |t|
    t.bigint "population"
  end

  create_table "discover", primary_key: ["cname", "disease_code"], force: :cascade do |t|
    t.string "cname", limit: 50, null: false
    t.string "disease_code", limit: 50, null: false
    t.date "first_enc_date"
  end

  create_table "disease", primary_key: "disease_code", id: { type: :string, limit: 50 }, force: :cascade do |t|
    t.string "pathogen", limit: 20
    t.string "description", limit: 140
    t.integer "id_disease"
  end

  create_table "diseasetype", id: :integer, default: nil, force: :cascade do |t|
    t.string "description", limit: 140
  end

  create_table "doctor", primary_key: "email", id: { type: :string, limit: 60 }, force: :cascade do |t|
    t.string "degree", limit: 20, null: false
  end

  create_table "patientdisease", primary_key: ["email", "disease_code"], force: :cascade do |t|
    t.string "email", limit: 60, null: false
    t.string "disease_code", limit: 50, null: false
  end

  create_table "patients", primary_key: "email", id: { type: :string, limit: 60 }, force: :cascade do |t|
  end

  create_table "publicservant", primary_key: "email", id: { type: :string, limit: 60 }, force: :cascade do |t|
    t.string "department", limit: 50
  end

  create_table "record", primary_key: ["email", "cname", "disease_code"], force: :cascade do |t|
    t.string "email", limit: 60, null: false
    t.string "cname", limit: 50, null: false
    t.string "disease_code", limit: 50, null: false
    t.integer "total_deaths"
    t.integer "total_patients"
  end

  create_table "specialize", primary_key: ["id_specialize", "email"], force: :cascade do |t|
    t.integer "id_specialize", null: false
    t.string "email", limit: 60, null: false
  end

  create_table "users", primary_key: "email", id: { type: :string, limit: 60 }, force: :cascade do |t|
    t.string "name", limit: 30
    t.string "surname", limit: 40
    t.string "phone", limit: 20
    t.string "cname", limit: 50
    t.integer "salary"
  end

  add_foreign_key "discover", "country", column: "cname", primary_key: "cname", name: "discover_cname_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "discover", "disease", column: "disease_code", primary_key: "disease_code", name: "discover_disease_code_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "disease", "diseasetype", column: "id_disease", name: "disease_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "doctor", "users", column: "email", primary_key: "email", name: "doctor_email_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "patientdisease", "disease", column: "disease_code", primary_key: "disease_code", name: "patientdisease_disease_code_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "patientdisease", "users", column: "email", primary_key: "email", name: "patientdisease_email_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "patients", "users", column: "email", primary_key: "email", name: "patients_email_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "publicservant", "users", column: "email", primary_key: "email", name: "publicservant_email_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "record", "country", column: "cname", primary_key: "cname", name: "record_cname_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "record", "disease", column: "disease_code", primary_key: "disease_code", name: "record_disease_code_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "record", "users", column: "email", primary_key: "email", name: "record_email_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "specialize", "diseasetype", column: "id_specialize", name: "specialize_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "specialize", "users", column: "email", primary_key: "email", name: "specialize_email_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "users", "country", column: "cname", primary_key: "cname", name: "fk_users_country", on_update: :cascade, on_delete: :cascade
end
