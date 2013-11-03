GratefulBecause::Application.routes.draw do
  root to: 'entries#index'
  resources :items
end
