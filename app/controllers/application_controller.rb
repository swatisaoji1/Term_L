class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order
  before_filter :set_current_user

  def set_current_user
    Order.current_user = current_user
    Wishlist.current_user = current_user
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      if !current_user.nil?
        order = Order.find_by_user_id_and_order_status_id(current_user.id, 1)
        if order.nil?
          return Order.new
        else
          order
        end
      else
        return Order.new
      end
    end
  end

  def current_wishlist
    if !session[:wishlist_id].nil?
      Wishlist.find(session[:wishlist_id])
    else
      if !current_user.nil?
        wishlist = Wishlist.find_by_user_id(current_user.id)
        if wishlist.nil?
          return Wishlist.new
        else
          wishlist
        end
      else
        return Wishlist.new
      end
    end
  end



end
