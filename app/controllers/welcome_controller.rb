class WelcomeController < ApplicationController
  def index
    puts ENV['GMAIL_DOMAIN']
    if user_signed_in?
      redirect_to :controller => 'dashboard', :action => 'index'
    end
  end
end
