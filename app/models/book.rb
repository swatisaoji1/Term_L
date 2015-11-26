class Book < ActiveRecord::Base
  
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :publishers
  has_and_belongs_to_many :authors
  belongs_to :users
  has_many :postings
  has_many :order_entries

end
