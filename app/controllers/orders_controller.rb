class OrdersController < ApplicationController
  before_filter :authenticate_user!

  def checkout
  	begin
  	  @order = current_order
  	  @order.order_status_id = 2
  	  @order.save
  	  session[:order_id] = nil
  	  redirect_to books_path, :notice => "Your order has been placed!"
	rescue => e
      Rails.logger.error { "Encountered an error: #{e}" }
      redirect_to books_path, :error => "Unable to checkout!"
    end
  end

end
