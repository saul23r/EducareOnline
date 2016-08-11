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

ActiveRecord::Schema.define(version: 20160809174307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "editorials", force: :cascade do |t|
    t.string   "editorial_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "entradas", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "descripcion"
    t.integer  "existencia"
    t.float    "precio_compra"
    t.float    "precio_venta"
    t.integer  "proveedor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "generos", force: :cascade do |t|
    t.string   "genero_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "quantity",   default: 1
    t.integer  "pedido_id"
    t.index ["cart_id"], name: "index_line_items_on_cart_id", using: :btree
    t.index ["product_id"], name: "index_line_items_on_product_id", using: :btree
  end

  create_table "marcas", force: :cascade do |t|
    t.string   "marca_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.integer  "pay_type"
    t.integer  "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.string   "author_libro"
    t.integer  "editorial_id"
    t.integer  "genero_id"
    t.integer  "cantidad",     default: 1
    t.integer  "proveedor_id"
    t.string   "descripcion"
    t.float    "precio"
    t.integer  "marca_id"
    t.string   "imagen"
    t.integer  "tipo"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "products"
end
