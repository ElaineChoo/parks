Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :parks do
    resources :rangers
  end
  
  resources :rangers do
    resources :parks
  end
end