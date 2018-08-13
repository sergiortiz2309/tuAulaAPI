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

ActiveRecord::Schema.define(version: 2018_08_13_000756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clases", force: :cascade do |t|
    t.string "ubicacion"
    t.date "fechaInicial"
    t.date "fechaFinal"
    t.bigint "curso_id"
    t.bigint "upz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_clases_on_curso_id"
    t.index ["upz_id"], name: "index_clases_on_upz_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nombre"
    t.integer "costo"
    t.boolean "certificado"
    t.bigint "categorium_id"
    t.bigint "modalidad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categorium_id"], name: "index_cursos_on_categorium_id"
    t.index ["modalidad_id"], name: "index_cursos_on_modalidad_id"
  end

  create_table "inscripcions", force: :cascade do |t|
    t.bigint "clase_id"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clase_id"], name: "index_inscripcions_on_clase_id"
    t.index ["usuario_id"], name: "index_inscripcions_on_usuario_id"
  end

  create_table "modalidads", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sesion_semanals", force: :cascade do |t|
    t.time "horaInicial"
    t.integer "duracionEnHoras"
    t.bigint "clase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clase_id"], name: "index_sesion_semanals_on_clase_id"
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

  add_foreign_key "clases", "cursos"
  add_foreign_key "clases", "upzs"
  add_foreign_key "cursos", "categoria"
  add_foreign_key "cursos", "modalidads"
  add_foreign_key "inscripcions", "clases"
  add_foreign_key "inscripcions", "usuarios"
  add_foreign_key "sesion_semanals", "clases"
end
