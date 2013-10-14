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

ActiveRecord::Schema.define(version: 20131012175720) do

  create_table "acta", force: true do |t|
    t.integer  "numero_acta"
    t.date     "fecha"
    t.string   "lugar"
    t.text     "desarrollo"
    t.text     "participantes"
    t.text     "cncluciones"
    t.text     "tareas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyectos", force: true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.text     "integrantes"
    t.integer  "etapa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "apellido2"
    t.text     "perfil"
    t.string   "correo"
    t.string   "twitter"
    t.string   "nickname"
    t.string   "pass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
