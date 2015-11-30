class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    logger.debug "I am in method ********facebook****************"
    logger.debug User.from_omniauth(request.env["omniauth.auth"]).inspect
    user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect user, notice: "Signed in"
  end    
=begin    
    if user.persisted?
      logger.debug user.email
      sign_in_and_redirect user, notice: "Signed in"
    else
      logger.debug "****** in else block ********"
      logger.debug user.attributes
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end
  
=end  

  alias_method :facebook, :all
end
