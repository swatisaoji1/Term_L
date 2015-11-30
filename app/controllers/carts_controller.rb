class CartsController < ApplicationController
  # before_action :authenticate_user!, except: [:index]
  
  def index
    
  end
  def show
  	@order_entries = current_order.order_entries
  	@total_price = current_order.total
  end


end
