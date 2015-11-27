class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order
  before_filter :set_current_user

  def set_current_user
    Order.current_user = current_user
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      if !current_user.nil?
        order = Order.find_by_user_id_and_order_status_id(current_user.id, 1)
      else
        Order.new
      end
    end
  end
end
