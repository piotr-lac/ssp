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

ActiveRecord::Schema.define(version: 20180117210606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adr_indicators", force: :cascade do |t|
    t.string "stakeholder", null: false
    t.integer "year", null: false
    t.string "month", null: false
    t.integer "number_of_operations", null: false
    t.integer "rwy_incursion"
    t.integer "twy_incursion"
    t.integer "app_incursion"
    t.integer "rwy_excursion"
    t.integer "twy_excursion"
    t.integer "app_excursion"
    t.integer "fuel"
    t.integer "fsf"
    t.integer "gcol"
    t.integer "ramp"
    t.float "obstacle"
    t.integer "birdstrike"
    t.integer "wildlife"
    t.integer "wild_take_abort"
    t.integer "go_around"
    t.integer "land_rvr"
    t.integer "take_off_rvr"
    t.integer "gcol_ramp_lvp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "rwy_incursion_spi"
  end

  create_table "ahac_indicators", force: :cascade do |t|
    t.string "stakeholder", null: false
    t.integer "year", null: false
    t.string "month", null: false
    t.integer "number_of_operations", null: false
    t.integer "fsf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "atm_indicators", force: :cascade do |t|
    t.string "stakeholder", null: false
    t.integer "year", null: false
    t.string "month", null: false
    t.integer "safety_alt"
    t.integer "level_bust"
    t.integer "smi"
    t.integer "rvr_minima"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ato_indicators", force: :cascade do |t|
    t.string "stakeholder", null: false
    t.integer "year", null: false
    t.string "month", null: false
    t.integer "number_of_operations", null: false
    t.integer "scf_np"
    t.integer "scf_pp"
    t.integer "tow_winch"
    t.integer "tow_aero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ops_indicators", force: :cascade do |t|
    t.string "stakeholder", null: false
    t.integer "year", null: false
    t.string "month", null: false
    t.integer "number_of_operations", null: false
    t.integer "rwy_excursion"
    t.integer "twy_excursion"
    t.integer "app_excursion"
    t.integer "arc"
    t.integer "fumes_smoke"
    t.integer "fire"
    t.integer "taws"
    t.integer "stall_warning"
    t.integer "level_bust"
    t.integer "tcas_ra"
    t.integer "scf_np"
    t.integer "scf_pp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
