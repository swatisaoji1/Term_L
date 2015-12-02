class DashboardController < ApplicationController
  before_filter :authenticate_user!
  helper_method :postings , :orders, :returns
  helper_method :get_order_enteries
  def index
    
  end
  
  def postings
    @books = Book.postings(current_user.id).order("created_at ASC")
   
  end
  
  def orders
    @orders = Order.orders(current_user.id).order("created_at DESC")
  end

  def returns
    @returns = OrderEntry.return_items(current_user.id).order("created_at DESC")
  end
  
  def order_enteries
   @order = Order.find(params[:id])
   @order_enteries = @order.order_entries
   logger.debug (@order_enteries)
   respond_to do |format|
      format.html
      format.js
    end
  end
end
