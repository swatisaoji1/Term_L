class DashboardController < ApplicationController
  before_filter :authenticate_user!
  helper_method :postings , :orders, :order_enteries
  def index
    
  end
  
  def postings
    @books = Book.postings(current_user.id).order("created_at ASC")
   
  end
  
  def orders
    @orders = Order.orders(current_user.id).order("created_at DESC")
  end
  
  def order_enteries
   # priority 2
  end
end
