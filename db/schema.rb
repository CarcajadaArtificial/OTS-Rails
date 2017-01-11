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

ActiveRecord::Schema.define(version: 20170111050210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerta", force: :cascade do |t|
    t.string   "titulo_alerta"
    t.string   "contenido_alerta"
    t.boolean  "leido_alerta"
    t.string   "emailuser_alerta"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "credencial_cliente",   null: false
    t.string   "empresa_cliente",      null: false
    t.string   "responsable_cliente",  null: false
    t.bigint   "telefono_cliente",     null: false
    t.string   "email_cliente",        null: false
    t.string   "comisionista_cliente", null: false
    t.float    "porcentage_cliente",   null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["credencial_cliente"], name: "index_clientes_on_credencial_cliente", using: :btree
  end

  create_table "filtros", force: :cascade do |t|
    t.string   "empresa_filtro",     null: false
    t.string   "fechainicio_filtro", null: false
    t.string   "fechafin_filtro",    null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "recibos", force: :cascade do |t|
    t.integer  "folio_recibo"
    t.float    "kmactual_recibo",           null: false
    t.float    "combustible_recibo",        null: false
    t.float    "sobres_recibo",             null: false
    t.string   "placas_recibo",             null: false
    t.string   "emailrepresentante_recibo"
    t.float    "preciogas_recibo",          null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["folio_recibo"], name: "index_recibos_on_folio_recibo", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "AdminStatus",            default: false
    t.string   "nombre_user"
    t.string   "telefono_user"
    t.string   "estado_user"
    t.string   "ciudad_user"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehiculos", force: :cascade do |t|
    t.string   "placas_vehiculo",               null: false
    t.string   "marca_vehiculo",                null: false
    t.string   "modelo_vehiculo",               null: false
    t.string   "ano_vehiculo",                  null: false
    t.float    "rendimientohistorico_vehiculo", null: false
    t.string   "operador_vehiculo",             null: false
    t.string   "credencialcliente_vehiculo",    null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["placas_vehiculo"], name: "index_vehiculos_on_placas_vehiculo", using: :btree
  end

end
