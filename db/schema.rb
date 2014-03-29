# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140329164943) do

  create_table "cities", force: true do |t|
    t.integer  "idCity"
    t.string   "nameCity"
    t.integer  "idDepartment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.integer  "idCountry"
    t.string   "nameCountry"
    t.integer  "shortCountry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_symptoms", force: true do |t|
    t.integer  "idData"
    t.integer  "idSymptom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.integer  "idDepartement"
    t.string   "nameDepartment"
    t.integer  "idRegion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disease_symptoms", force: true do |t|
    t.integer  "idDisease"
    t.integer  "idSymptom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diseases", force: true do |t|
    t.integer  "idDisease"
    t.string   "nameDiease"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "epidemicdata", force: true do |t|
    t.integer  "idData"
    t.date     "date"
    t.integer  "idCity"
    t.integer  "idDisease"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "globals", force: true do |t|
    t.string   "ville"
    t.string   "departement"
    t.string   "region"
    t.string   "pays"
    t.date     "date"
    t.string   "maladie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.integer  "idRegion"
    t.string   "nameRegion"
    t.integer  "idCountry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "symps", force: true do |t|
    t.string   "maladie"
    t.string   "symp1"
    t.string   "symp2"
    t.string   "symp3"
    t.string   "symp4"
    t.string   "symp5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "symptoms", force: true do |t|
    t.integer  "idSymptom"
    t.string   "nomSymptom"
    t.text     "descriptionSymptom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sympts", force: true do |t|
    t.string   "maladie"
    t.string   "symptome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
