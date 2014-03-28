DHC2014::Application.routes.draw do
  resources :acceuil
  root to: "acceuil#home"
 
end
