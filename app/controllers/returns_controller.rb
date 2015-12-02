class ReturnsController < ApplicationController
  before_filter :authenticate_user!

  def return
  	oe = OrderEntry.find(params[:id])
  	oe.returned = true
  	oe.book.quantity = oe.book.quantity + oe.quantity
  	oe.book.save
  	oe.save
  	redirect_to "/dashboard", :notice => "Book is returned successfully!"	
  end
  
end
