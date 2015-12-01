class WelcomeController < ApplicationController
  helper_method :featured_books
  
  def index
    puts ENV['GMAIL_DOMAIN']
    if user_signed_in?
      redirect_to :controller => 'dashboard', :action => 'index'
    end
  end
  
  def featured_books
    @books = Book.take(8)
  end

end
