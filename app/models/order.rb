class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :order_status
  has_many :order_entries
  before_create :set_order_status
  before_save :finalize
  cattr_accessor :current_user

  def total
    order_entries.collect { |oe| oe.valid? ? oe.total_price : 0}.sum
  end

  def set_order_status
    self.order_status_id = 1
    
  end

  def finalize
   	self[:total] = total
    puts current_user
    self[:user_id] = current_user.id
  end
  
  def self.orders(id)
    where("user_id = ?", id)
  end

end