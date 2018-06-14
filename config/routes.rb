Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :calendars
  resources :blogposts

  get 'about',              to: 'static_pages#about'
  get 'mitmischen',         to: 'static_pages#mitmischen'
  get 'kontakt',            to: 'static_pages#kontakt'
  get 'nussletter',         to: 'static_pages#newsletter'
  get 'satzung',            to: 'static_pages#satzung'
  get 'mitgliedsformular',  to: 'static_pages#mitgliedsformular'
  get 'impressum',          to: 'static_pages#impressum'
  get 'presse',             to: 'static_pages#presse'

  root 'static_pages#home'
end
