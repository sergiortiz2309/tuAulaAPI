Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :usuarios 
  resources :upzs 
  resources :modalidads 
  resources :categoria 
  resources :cursos
  resources :clases
end
