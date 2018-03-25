Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :calendars
  resources :blogposts

  get 'about',        to: 'static_pages#about'
  get 'participate',  to: 'static_pages#participate'
  get 'advent',       to: 'static_pages#advent'
  get 'contact',      to: 'static_pages#contact'
  get 'nussletter',   to: 'static_pages#newsletter'
  get 'imprint',      to: 'static_pages#imprint'
  get 'press',        to: 'static_pages#press'

  root 'static_pages#home'
end
