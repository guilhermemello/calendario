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

ActiveRecord::Schema.define(version: 20160405213256) do

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

end
