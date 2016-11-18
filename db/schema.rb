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

ActiveRecord::Schema.define(version: 20161115002933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string   "credencial_cliente"
    t.string   "empresa_cliente"
    t.string   "responsable_cliente"
    t.integer  "telefono_cliente"
    t.string   "email_cliente"
    t.string   "comisionista_cliente"
    t.float    "porcentage_cliente"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["credencial_cliente"], name: "index_clientes_on_credencial_cliente", using: :btree
  end

  create_table "recibos", force: :cascade do |t|
    t.integer  "folio_recibo"
    t.float    "kmanterior_recibo"
    t.float    "kmactual_recibo"
    t.float    "combustible_recibo"
    t.float    "sobres_recibo"
    t.integer  "vehiculo_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["folio_recibo"], name: "index_recibos_on_folio_recibo", using: :btree
    t.index ["vehiculo_id"], name: "index_recibos_on_vehiculo_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "AdminStatus"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehiculos", force: :cascade do |t|
    t.string   "placas_vehiculo"
    t.string   "marca_vehiculo"
    t.string   "modelo_vehiculo"
    t.string   "ano_vehiculo"
    t.float    "rendimientohistorico_vehiculo"
    t.string   "operador_vehiculo"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["placas_vehiculo"], name: "index_vehiculos_on_placas_vehiculo", using: :btree
  end

end
