class AmazonController < ApplicationController
  def index
    search_term = params[:search] || '9781490564098'
    @res  = Amazon::Ecs.item_search(search_term,  { :search_index => 'Books', :sort => 'relevancerank' })
    @imgs = Amazon::Ecs.item_search(search_term,  { :response_group => 'Images',
                                                    :search_index => 'Books',
                                                    :sort => 'relevancerank' })
  end
  
  def compare
    @book= Book.find(params[:id])
    @search_term = @book.isbn
    search_term = @search_term.delete("^a-zA-Z  0-9")
    @res  = Amazon::Ecs.item_search(search_term,  { :search_index => 'Books', :sort => 'relevancerank' })
    @price  = Amazon::Ecs.item_search(search_term,  { :response_group => 'Offers', :search_index => 'Books', :sort => 'relevancerank' })
    @imgs = Amazon::Ecs.item_search(search_term,  { :response_group => 'Images',
                                                    :search_index => 'Books',
                                                    :sort => 'relevancerank' })
                                                    
   
  end
end
