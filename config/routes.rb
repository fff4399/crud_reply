Rails.application.routes.draw do
  post 'comment/reply_create' => 'comment#reply_create'

  get 'comment/reply_delete/:reply_id' => 'comment#reply_delete'

  root 'board#index'
  
  get 'board/index' => 'board#index'

  get 'board/show/:post_id' => 'board#show'

  post 'board/new' => 'board#new'    #새로운 post를 작성

  post 'board/create' => 'board#create'   #새로운 post에 입력받은 값을 DB에 저장하는 액션

  get 'board/edit/:post_id' => 'board#edit'

  post 'board/update/:post_id' => 'board#update'

  get 'board/delete/:post_delete' => 'board#delete'

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
