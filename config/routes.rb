Bfit::Application.routes.draw do

  resources :categories
  resources :subcategories
  resources :videos
  resources :pins
  resources :charges

  get "videos/index"
  get "videos/new"
  get "videos/update"
  get "videos/destroy"
  get "video_content/new"
  get "video_content/read"
  get "video_content/update"
  get "video_content/destroy"
  devise_for :users
  root :to => 'pages#home'
  get 'about' => 'pages#about'
  get 'breakfit' => 'pages#breakfit'
  get 'windmills' => 'pages#windmills'
  get 'testimonials' => 'pages#testimonials'
  get 'comingsoon' => 'pages#coming_soon'

  get 'basics' => 'basics#home'
  get 'basics/stretches' => 'basics#stretches'
  get 'basics/wriststretches' => 'basics#wristStretches'
  get 'basics/foundationprinciples' => 'basics#foundationPrinciples'

  get 'core' => 'core#home'
  get 'core/foundation/toprock' => 'core#f_toprock'
  get 'core/foundation/footwork1' => 'core#f_footwork_1'
  get 'core/foundation/footwork2' => 'core#f_footwork_2'
  get 'core/foundation/freeze1' => 'core#f_freeze_1'
  get 'core/foundation/freeze2' => 'core#f_freeze_2'  

  get 'adminCP' => 'admin_cp#index'
  get 'adminCP/new' => 'admin_cp#new'
  get 'adminCP/edit/' => 'admin_cp#edit'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
