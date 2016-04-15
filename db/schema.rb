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

ActiveRecord::Schema.define(version: 20160414113403) do

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

  create_table "disciplinas_Professores", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "disciplina_id", limit: 4
    t.integer  "professor_id",  limit: 4
  end

  add_index "disciplinas_Professores", ["disciplina_id"], name: "fk_dd", using: :btree
  add_index "disciplinas_Professores", ["professor_id"], name: "fk_dp", using: :btree

  create_table "estudios", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "endereco",   limit: 255
    t.string   "telefone",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.integer  "disciplina_id", limit: 4
    t.integer  "professor_id",  limit: 4
    t.integer  "estudio_id",    limit: 4
    t.date     "data"
    t.time     "hora_inicial"
    t.time     "hora_final"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "eventos", ["disciplina_id"], name: "fk_ed", using: :btree
  add_index "eventos", ["estudio_id"], name: "fk_ee", using: :btree
  add_index "eventos", ["professor_id"], name: "fk_ep", using: :btree

  create_table "professores", force: :cascade do |t|
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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role",                   limit: 4,   default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "disciplinas_Professores", "disciplinas", name: "fk_dd", on_update: :cascade
  add_foreign_key "disciplinas_Professores", "professores", column: "professor_id", name: "fk_dp", on_update: :cascade
  add_foreign_key "eventos", "disciplinas", name: "fk_ed", on_update: :cascade
  add_foreign_key "eventos", "estudios", name: "fk_ee", on_update: :cascade
  add_foreign_key "eventos", "professores", column: "professor_id", name: "fk_ep", on_update: :cascade
end
