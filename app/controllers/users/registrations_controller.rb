class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  private

  def sign_up_params
    params.require(:user).permit(
    :nom, 
    :prenom, 
    :email, 
    :date_de_naissance, 
    :lieu_de_naissance, 
    :nationalité, 
    :numéro_de_téléphone, 
    :adresse, 
    :ville, 
    :statut_matrimonial, 
    :nombre_d_enfants, 
    :etudiant, 
    :dernier_diplôme, 
    :employé, 
    :statut_emploi,
    :emploi_temps,
    :salaire,
    :pratique_un_sport,
    :sport_pratiqué,
    :heures_de_sport_par_semaine,
    :niveau_sportif,
    :orientation_sexuelle,
    :pratique_sexuelles,
    :position_sexuelle_préférée,
    :permis_de_conduire,
    :donateur_de_sang,
    :admin,
    :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(
    :nom, 
    :prenom, 
    :email, 
    :date_de_naissance, 
    :lieu_de_naissance, 
    :nationalité, 
    :numéro_de_téléphone, 
    :adresse, 
    :ville, 
    :statut_matrimonial, 
    :nombre_d_enfants, 
    :etudiant, 
    :dernier_diplôme, 
    :employé, 
    :statut_emploi,
    :emploi_temps,
    :salaire,
    :pratique_un_sport,
    :sport_pratiqué,
    :heures_de_sport_par_semaine,
    :niveau_sportif,
    :orientation_sexuelle,
    :pratique_sexuelles,
    :position_sexuelle_préférée,
    :permis_de_conduire,
    :donateur_de_sang,
    :password, :password_confirmation, :current_password)
  end
end
