class Book < ActiveRecord::Base
  SALETYPES = ['Selling', 'Renting']
  EDITION = ['Paper Back Edition', 'Hardcover edition']
  
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :publishers
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :tags
  belongs_to :users
  has_many :postings
  has_many :order_entries

  def self.search(search)
    where("lower(title) LIKE ?", "%#{search.downcase}%") 
  end
  
  def self.postings(id)
    where("user_id = ?", id)
  end

  def tag_list
    self.tags.map { |t| t.tag_name; puts t.tag_name}.join(", ")
  end

  def tag_list=(new_value)
    tag_names = new_value.split(/,\s+/)
    self.tags = tag_names.map { |tag_name| 
      tag_name = tag_name.downcase
      Tag.where('tag_name = ?', tag_name).first or Tag.create(:tag_name => tag_name) 
    }
  end

  def category_list
    self.categories.map { |t| t.category_name; puts t.category_name}.join(", ")
  end

  def category_list=(new_value)
    category_names = new_value.split(/,\s+/)
    self.categories = category_names.map { |category_name| 
      category_name = category_name.split.map(&:capitalize).join(' ')
      Category.where('category_name = ?', category_name).first or Category.create(:category_name => category_name) 
    }
  end

  def author_list
    self.authors.map { |t| t.author_name; puts t.author_name}.join(", ")
  end

  def author_list=(new_value)
    author_names = new_value.split(/,\s+/)
    self.authors = author_names.map { |author_name| 
      author_name = author_name.split.map(&:capitalize).join(' ')
      Author.where('author_name = ?', author_name).first or Author.create(:author_name => author_name) }
  end

  def publisher_list
    self.publishers.map { |t| t.publisher_name; puts t.publisher_name}.join(", ")
  end

  def publisher_list=(new_value)
    publisher_names = new_value.split(/,\s+/)
    self.publishers = publisher_names.map { |publisher_name|
      publisher_name = publisher_name.split.map(&:capitalize).join(' ')
      Publisher.where('publisher_name = ?', publisher_name).first or Publisher.create(:publisher_name => publisher_name) }
  end

end
