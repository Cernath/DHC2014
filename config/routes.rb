DHC2014::Application.routes.draw do
  resources :symps

  resources :sympts

  resources :globals

  resources :acceuil
  root to: "acceuil#home"
  get 'detectme/index'
  get 'about/index'
end
