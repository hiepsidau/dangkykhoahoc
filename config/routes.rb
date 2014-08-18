Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'students#register'
  # # Example of regular route:
  # get '/register' => 'students#register'#goi method get,toi controller student
  # post '/sign_up' => 'students#sign_up'
  # get '/students' => 'students#index'
  # match '/login' => 'students#login', :via => [:get, :post]
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do    7 method (index       students[GET] => collection
  #     member do                         created     students[POST]  => collection
  #       get 'short'                     new         students/new[GET] => :new collection
  #       post 'toggle'                   edit        students/:id[GET]
  #     end                               update      students/:id [PUT]      member
  #                                       delete      students/:id [DELETE]
  #     collection do                     show        students/:id [GET]
  #       get 'sold'
  #     end
  #   end
  # rake routes
  resource :students do
    collection do
      post 'sign_up'
      get 'register'
      get 'login'
      post 'login'
    end
  end



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
