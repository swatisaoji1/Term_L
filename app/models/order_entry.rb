class OrderEntry < ActiveRecord::Base
  belongs_to :book
  belongs_to :order

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :book_present
  validate :order_present

  before_save :finalize
  after_update :update_order

  def unit_cost
    #book.price
    self[:unit_cost]
  end

  def total_price
  	self[:unit_cost] * quantity
  end

  private
  def book_present
    if book.nil?
      errors.add(:book, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

  def finalize
    # self[:unit_cost] = unit_cost
    self[:total_price] = quantity * self[:unit_cost]
  end

  def update_order
    order.save
  end

  def self.return_items(id)
    OrderEntry.joins(:order, :book).where("returned = 'f' and orders.user_id = ? and books.sale_type = 'Renting'", id)
  end

end
