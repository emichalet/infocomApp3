class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :prenom, :string
    add_column :users, :nom, :string
    add_column :users, :date_de_naissance, :date
    add_column :users, :lieu_de_naissance, :string
    add_column :users, :nationalité, :string
    add_column :users, :numéro_de_téléphone, :string
    add_column :users, :adresse, :string
    add_column :users, :ville, :string
    add_column :users, :statut_matrimonial, :string
    add_column :users, :nombre_d_enfants, :integer
    add_column :users, :etudiant, :boolean
    add_column :users, :dernier_diplôme, :string
    add_column :users, :employé, :boolean
    add_column :users, :statut_emploi, :string
    add_column :users, :contrat_temps, :string
    add_column :users, :salaire, :integer
    add_column :users, :pratique_un_sport, :boolean
    add_column :users, :sport_pratiqué, :string
    add_column :users, :heures_de_sport_par_semaine, :integer
    add_column :users, :niveau_sportif, :string
    add_column :users, :orientation_sexuelle, :string
    add_column :users, :pratique_sexuelles, :string
    add_column :users, :position_sexuelle_préférée, :string
    add_column :users, :permis_de_conduire, :boolean
    add_column :users, :donateur_de_sang, :boolean
    add_column :users, :money_won, :integer, :default => 0
    add_column :users, :money_lost, :integer, :default => 0
    add_column :users, :current_money, :integer, :default => 0
  end
end
