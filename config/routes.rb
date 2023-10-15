Rails.application.routes.draw do
  resources :portfollios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

end
