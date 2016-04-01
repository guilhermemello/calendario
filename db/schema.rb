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

ActiveRecord::Schema.define(version: 20160311131932) do

  create_table "compromissos", force: :cascade do |t|
    t.string   "titulo",     limit: 255
    t.text     "texto",      limit: 65535
    t.date     "date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "disciplinas_mestre", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas_mestres", id: false, force: :cascade do |t|
    t.integer "disciplina_id", limit: 4
    t.integer "mestre_id",     limit: 4
  end

  create_table "eventos", force: :cascade do |t|
    t.integer  "disciplina_id", limit: 4
    t.integer  "mestre_id",     limit: 4
    t.integer  "studio_id",     limit: 4
    t.date     "data"
    t.time     "hora_inicial"
    t.time     "hora_final"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "eventos", ["disciplina_id"], name: "disciplina_id", using: :btree
  add_index "eventos", ["mestre_id"], name: "mestre_id", using: :btree
  add_index "eventos", ["studio_id"], name: "studio_id", using: :btree

  create_table "mestres", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "matricula",  limit: 255
    t.string   "celular",    limit: 255
    t.string   "email",      limit: 255
    t.string   "foto",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "endereco",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "eventos", "disciplinas", name: "eventos_ibfk_1"
  add_foreign_key "eventos", "mestres", name: "eventos_ibfk_2"
  add_foreign_key "eventos", "studios", name: "eventos_ibfk_3"
end
