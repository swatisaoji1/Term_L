class OrderEntriesController < ApplicationController
  #before_filter :authenticate_user!

  def new
    @order = current_order
    @order_entry = @order.order_entries.new
  end

  def create
    @order = current_order
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
    params.require(:order_entry).permit(:quantity, :book_id)
  end
end
