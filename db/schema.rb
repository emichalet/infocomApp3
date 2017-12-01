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

ActiveRecord::Schema.define(version: 20171201022806) do

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prenom"
    t.string "nom"
    t.date "date_de_naissance"
    t.string "lieu_de_naissance"
    t.string "nationalité"
    t.string "numéro_de_téléphone"
    t.string "adresse"
    t.string "ville"
    t.string "statut_matrimonial"
    t.integer "nombre_d_enfants"
    t.boolean "etudiant"
    t.string "dernier_diplôme"
    t.boolean "employé"
    t.string "statut_emploi"
    t.string "contrat_temps"
    t.integer "salaire"
    t.boolean "pratique_un_sport"
    t.string "sport_pratiqué"
    t.integer "heures_de_sport_par_semaine"
    t.string "niveau_sportif"
    t.string "orientation_sexuelle"
    t.string "pratique_sexuelles"
    t.string "position_sexuelle_préférée"
    t.boolean "permis_de_conduire"
    t.boolean "donateur_de_sang"
    t.integer "money_won", default: 0
    t.integer "money_lost", default: 0
    t.integer "current_money", default: 0
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
