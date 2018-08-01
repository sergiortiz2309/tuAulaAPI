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

ActiveRecord::Schema.define(version: 2018_07_18_221428) do

  create_table "categoria", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modalidads", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "upzs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuario_categoria_preferencia", force: :cascade do |t|
    t.integer "categoria_id"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_id"], name: "index_usuario_categoria_preferencia_on_categoria_id"
    t.index ["usuario_id"], name: "index_usuario_categoria_preferencia_on_usuario_id"
  end

  create_table "usuario_modalidad_preferencia", force: :cascade do |t|
    t.integer "modalidad_id"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["modalidad_id"], name: "index_usuario_modalidad_preferencia_on_modalidad_id"
    t.index ["usuario_id"], name: "index_usuario_modalidad_preferencia_on_usuario_id"
  end

  create_table "usuario_upz_preferencia", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "upz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["upz_id"], name: "index_usuario_upz_preferencia_on_upz_id"
    t.index ["usuario_id"], name: "index_usuario_upz_preferencia_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "idUsuario"
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "password"
    t.date "fechaDeNacimiento"
    t.string "direccion"
    t.integer "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
