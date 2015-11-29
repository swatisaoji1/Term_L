class DashboardController < ApplicationController
  before_filter :authenticate_user!
  helper_method :postings
  def index
    
  end
  
  def postings
    @books = Book.postings(current_user.id).order("created_at ASC")
   
  end
end
