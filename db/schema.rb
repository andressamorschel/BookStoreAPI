# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_05_143132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "btree_gin"
  enable_extension "btree_gist"
  enable_extension "citext"
  enable_extension "cube"
  enable_extension "dblink"
  enable_extension "dict_int"
  enable_extension "dict_xsyn"
  enable_extension "earthdistance"
  enable_extension "fuzzystrmatch"
  enable_extension "hstore"
  enable_extension "intarray"
  enable_extension "ltree"
  enable_extension "pg_stat_statements"
  enable_extension "pg_trgm"
  enable_extension "pgcrypto"
  enable_extension "pgrowlocks"
  enable_extension "pgstattuple"
  enable_extension "plpgsql"
  enable_extension "tablefunc"
  enable_extension "unaccent"
  enable_extension "uuid-ossp"
  enable_extension "xml2"

  create_table "autores_livros", id: :serial, force: :cascade do |t|
    t.integer "autor_id", null: false
    t.integer "livro_id", null: false
  end

  create_table "autors", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 45, null: false
    t.date "data_nascimento", null: false
  end

  create_table "editoras", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 45, null: false
  end

  create_table "likes", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "ref_tipo", limit: 45
    t.integer "ref_id"
  end

  create_table "livros", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 45, null: false
    t.string "publicado", limit: 1, null: false
    t.integer "editora_id", null: false
  end

  create_table "usuarios", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 45
  end

  add_foreign_key "autores_livros", "autors", name: "autores_livros_autor_id_fkey"
  add_foreign_key "autores_livros", "livros", name: "autores_livros_livro_id_fkey"
  add_foreign_key "likes", "usuarios", column: "user_id", name: "likes_user_id_fkey"
  add_foreign_key "livros", "editoras", name: "livros_editora_id_fkey"
end
