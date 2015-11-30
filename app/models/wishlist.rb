class Wishlist < ActiveRecord::Base
	belongs_to :user
	has_many :wishlist_entries
	cattr_accessor :current_user
	before_save :finalize

	def finalize
	  puts current_user
	  self[:user_id] = current_user.id
  	end
end