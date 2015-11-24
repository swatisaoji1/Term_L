class CartController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def add
  	id = params[:id]
  	if session[:cart] then
  	   cart = session[:cart]
  	else 
  		session[:cart] = {}
  		cart = session[:cart]
  	end

  	 if cart[id] then
  	 	cart[id] = cart[id] + 1
  	 else
  	 	cart[id] = 1
  	 end
  	 Pusher.trigger('test_channel', 'my_event', {
      message: current_user.name + " added something  to cart" 
      })
  	 redirect_to :action => :index
  end

  def clearCart
  	session[:cart] = nil
  	redirect_to :action => :index
  end


  def index
  	#if there is a cart, pass it to the page for display else pass an empty value
  	if session[:cart] then
  		@cart = session[:cart]
  	else
  		@cart = {}
  	end
  			
  end

end
