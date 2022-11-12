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

ActiveRecord::Schema[7.0].define(version: 2022_11_12_091924) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conditions_drugs", force: :cascade do |t|
    t.bigint "pre_existing_condition_id", null: false
    t.bigint "drug_allergy_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drug_allergy_id"], name: "index_conditions_drugs_on_drug_allergy_id"
    t.index ["pre_existing_condition_id"], name: "index_conditions_drugs_on_pre_existing_condition_id"
  end

  create_table "conditions_foods", force: :cascade do |t|
    t.bigint "pre_existing_condition_id", null: false
    t.bigint "food_allergy_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_allergy_id"], name: "index_conditions_foods_on_food_allergy_id"
    t.index ["pre_existing_condition_id"], name: "index_conditions_foods_on_pre_existing_condition_id"
  end

  create_table "drug_allergies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_allergies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "next_of_kins", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "national_id"
    t.string "image"
    t.string "telephone"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "doctor_id"
  end

  create_table "pre_existing_conditions", force: :cascade do |t|
    t.boolean "diabetes", default: false
    t.boolean "hypertension", default: false
    t.boolean "asthma", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "conditions_drugs", "drug_allergies"
  add_foreign_key "conditions_drugs", "pre_existing_conditions"
  add_foreign_key "conditions_foods", "food_allergies"
  add_foreign_key "conditions_foods", "pre_existing_conditions"
end
