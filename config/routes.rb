Rails.application.routes.draw do
  resources :atricles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#homepage'
  get'aboutus',to:'pages#aboutus'
end
