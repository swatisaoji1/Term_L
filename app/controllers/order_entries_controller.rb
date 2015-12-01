class OrderEntriesController < ApplicationController
  #before_filter :authenticate_user!

  before_filter :store_location
  before_filter :authenticate_user!
  def new
    @order = current_order
    @order_entry = @order.order_entries.new
    render "books"
  end

  def create
    @order = current_order
    current_order_entries = @order.order_entries
    current_order_entries.each do |oe|
      if oe.book_id == order_entry_params[:book_id].to_i then
        oe.quantity = oe.quantity + order_entry_params[:quantity].to_i
        oe.unit_cost = order_entry_params[:unit_cost]
        oe.save
        return
      end
    end
    @order_entry = @order.order_entries.new(order_entry_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_entry = @order.order_entries.find(params[:id])
    @order_entry.update_attributes(order_entry_params)
    @order_entries = @order.order_entries
  end

  def destroy
    @order = current_order
    @order_entry = @order.order_entries.find(params[:id])
    @order_entry.destroy
    @order_entries = @order.order_entries
  end

  private
  def order_entry_params
    params.require(:order_entry).permit(:quantity, :book_id, :unit_cost)
  end
  
  def store_location
    session[:user_return_to] = "/books"
  end
end


