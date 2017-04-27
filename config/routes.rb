Rails.application.routes.draw do
  get 'user/:user_id' => "user#show"

  get 'user/index'

  devise_for :users
  get 'posts/:post_id' => "post#show"

  get 'post/new'

  get 'city/index'

  get 'cities/:id' => "city#show"

  get 'static_pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
end
