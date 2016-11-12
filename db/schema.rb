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

ActiveRecord::Schema.define(version: 20161112031713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "camions", force: :cascade do |t|
    t.string   "placa_camion"
    t.string   "marca_camion"
    t.string   "modelo_camion"
    t.integer  "ano_camion"
    t.integer  "rendimientohistorico_camion"
    t.string   "nombreoperador_camion"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["placa_camion"], name: "index_camions_on_placa_camion", using: :btree
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "id_cliente"
    t.string   "nombreempresa_cliente"
    t.string   "nombreresponsable_cliente"
    t.integer  "tel_cliente"
    t.string   "email_cliente"
    t.string   "comisionista_cliente"
    t.integer  "porcentagecomisionista_cliente"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["id_cliente"], name: "index_clientes_on_id_cliente", using: :btree
  end

  create_table "models", force: :cascade do |t|
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
    t.index ["email"], name: "index_models_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree
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

end
