Rails.application.routes.draw do

  devise_for :users
 resources :posts
 
 root 'static_pages#index'

 get 'about' => 'static_pages#about'
 get 'faq' => 'static_pages#faq'
 get 'contact' => 'static_pages#contact'

 get 'new_post' => 'posts#new'
 
 
end
