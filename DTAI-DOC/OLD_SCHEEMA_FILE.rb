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

ActiveRecord::Schema.define(version: 2020_10_03_143247) do

    # These are extensions that must be enabled in order to support this database
    enable_extension "plpgsql"
  
    create_table "agents", force: :cascade do |t|
      t.string "matricule"
      t.string "nom"
      t.string "prenom"
      t.string "titre"
      t.string "sex"
      t.date "date_de_naissance"
      t.date "date_en_cours"
      t.date "date_recrutement"
      t.string "lieu_de_naissance"
      t.string "nationalite"
      t.string "email"
      t.bigint "telephone"
      t.bigint "code_femme_marie"
      t.string "nom_du_mari"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "classes", force: :cascade do |t|
      t.bigint "code"
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "corps", force: :cascade do |t|
      t.bigint "code"
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "departements", force: :cascade do |t|
      t.string "name"
      t.bigint "region_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["region_id"], name: "index_departements_on_region_id"
    end
  
    create_table "directions", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "echellons", force: :cascade do |t|
      t.bigint "code"
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "emplois", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "etablissements", force: :cascade do |t|
      t.string "name"
      t.string "code"
      t.bigint "region_id"
      t.bigint "departement_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["departement_id"], name: "index_etablissements_on_departement_id"
      t.index ["region_id"], name: "index_etablissements_on_region_id"
    end
  
    create_table "expatries", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.bigint "code"
    end
  
    create_table "grades", force: :cascade do |t|
      t.bigint "indice_grade"
      t.bigint "code_grade"
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "mode_paiements", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "positions", force: :cascade do |t|
      t.bigint "code"
      t.string "name"
      t.date "date_debut_position"
      t.date "date_fin_position"
      t.date "date_annulation_position"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "postes", force: :cascade do |t|
      t.date "date_debut"
      t.date "date_fin"
      t.string "nom_ecriture"
      t.bigint "capital"
      t.bigint "cumul_retenu"
      t.bigint "montant"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "prestations", force: :cascade do |t|
      t.bigint "code"
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "regions", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "residences", force: :cascade do |t|
      t.bigint "code_residence"
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "service_etablsmts", force: :cascade do |t|
      t.string "name"
      t.string "etablissement"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "services", force: :cascade do |t|
      t.string "name"
      t.bigint "typeservice_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["typeservice_id"], name: "index_services_on_typeservice_id"
    end
  
    create_table "sous_service_etablsmts", force: :cascade do |t|
      t.string "name"
      t.bigint "service_etablsmt_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["service_etablsmt_id"], name: "index_sous_service_etablsmts_on_service_etablsmt_id"
    end
  
    create_table "typeservices", force: :cascade do |t|
      t.string "name"
      t.bigint "direction_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["direction_id"], name: "index_typeservices_on_direction_id"
    end
  
    create_table "users", force: :cascade do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "roles"
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    end
  
    add_foreign_key "departements", "regions"
    add_foreign_key "etablissements", "departements"
    add_foreign_key "etablissements", "regions"
    add_foreign_key "services", "typeservices"
    add_foreign_key "sous_service_etablsmts", "service_etablsmts"
    add_foreign_key "typeservices", "directions"
  end
  
