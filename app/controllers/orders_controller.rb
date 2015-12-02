class OrdersController < ApplicationController
  before_filter :authenticate_user!

  def checkout
  	begin
  	  @order = current_order

      @order.order_entries.each do |oe|
        if oe.book.quantity < oe.quantity
          redirect_to "/carts/show", :alert => "#{oe.book.title} out of stock!"
          return    
        end
      end
  	  @order.order_status_id = 2
  	  @order.save
      session[:order_id] = nil
      @order.order_entries.each do |oe|
        new_quantity = oe.book.quantity - oe.quantity
        oe.book.quantity = new_quantity
        oe.book.save
      end
  	  redirect_to books_path, :notice => "Your order has been placed!"
	rescue => e
      Rails.logger.error { "Encountered an error: #{e}" }
      redirect_to books_path, :error => "Unable to checkout!"
    end
  end

end
