Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :calendars
  resources :blogposts

  get 'about',              to: 'static_pages#about'
  get 'mitmischen',         to: 'static_pages#mitmischen'
  get 'advent',             to: 'static_pages#advent'
  get 'contact',            to: 'static_pages#contact'
  get 'nussletter',         to: 'static_pages#newsletter'
  get 'satzung',            to: 'static_pages#satzung'
  get 'mitgliedsformular',  to: 'static_pages#mitgliedsformular'
  get 'imprint',            to: 'static_pages#imprint'
  get 'press',              to: 'static_pages#press'

  root 'static_pages#home'
end
