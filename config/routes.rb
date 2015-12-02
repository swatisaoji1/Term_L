Rails.application.routes.draw do
  #get 'order_entries/create'

  #get 'order_entries/update'

  #get 'order_entries/destroy'

  #get 'cart/index'

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks", registrations: "registrations"}
  patch '/users/confirmation' => 'devise/confirmations#update', :via => :patch, :as => :update_user_confirmation
  resources :dashboard
  authenticate :user do
    resources :books, only: [:new, :create, :edit, :update, :destroy]
    #resources :order_entries, only: [:new, :create, :edit, :update, :destroy]
  end
 resources :books do
    collection do
      get 'postings'
    end
  end
  resources :books, only: [:index, :show]

  resources :order_entries
  resources :carts
  resources :wishlists
  resources :wishlist_entries
  # resources :order_entries, only: [:create]
  
  resources :amazon do
    member do 
        post 'compare'
    end
  end
  
  match '/amazon_price/:id',
    to:   'books#amazon_price',
    via:  'get',
    as:   :amazon_price
 
   match '/order_enteries/:id',
    to:   'dashboard#order_enteries',
    via:  'get',
    as:   :order_enteries
  
  root 'welcome#index'
  get '/MyCart' => 'welcome#mycart'
  get '/WishList' => 'welcome#wishlist'
  get '/Catalog' => 'welcome#catalog'
  get '/PostABook' => 'welcome#postabook'
  get '/books' => 'books#index'
  get '/About' => 'welcome#about'
  get '/Orders' => 'orders#checkout'
  get '/Returns/:id' => 'returns#return'

  # get '/cart' => 'cart#index'
  # get '/cart/clear' => 'cart#clearCart'
  # get 'cart/:id' => 'cart#add'
  
  get '/amazon' => 'amazon#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
