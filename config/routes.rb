Rails.application.routes.draw do

  resources :profiles
  devise_for :users
  resources :games

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  get 'home/index'
  get 'search/' => 'search#result'
  get 'home/' => 'home#index'

  get 'admin/index'
  get 'admin/games'
  get 'admin/comments'
  get 'admin/users'

  post '/rate' => 'rater#create', :as => 'rate'

  get 'search/index'

  post 'comment/new' => 'comment#create'
  delete 'comment/destroy' => 'comment#destroy'
  put 'comment/notify' => 'comment#notify'
  put 'comment/reset_notify'


  match 'user/destroy/:id' => 'user#destroy', :via => :delete, :as => :admin_destroy_user


  #get 'profiles/edit' => 'profiles#edit'


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
