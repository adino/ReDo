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

ActiveRecord::Schema.define(version: 2021_01_25_222546) do

  create_table "faces", force: :cascade do |t|
    t.text "text"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "redo_id"
    t.index ["redo_id"], name: "index_faces_on_redo_id"
  end

  create_table "redos", force: :cascade do |t|
    t.integer "hw_type"
    t.integer "version"
    t.text "shared_key"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "redo_id"
    t.integer "face_id"
    t.string "serial"
    t.index ["face_id"], name: "index_redos_on_face_id"
    t.index ["redo_id"], name: "index_redos_on_redo_id"
  end

  create_table "rotations", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "faces", "redos"
  add_foreign_key "redos", "faces"
  add_foreign_key "redos", "redos"
end
