class RegistrationsController < Devise::RegistrationsController
  
  private

  def sign_up_params
    logger.debug "I am in sign up params"
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end
