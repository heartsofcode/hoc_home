Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :calendars
  resources :blogposts

  get 'about',        to: 'static_pages#about'
  get 'blog',         to: 'static_pages#blog'
  get 'advent',       to: 'static_pages#advent'
  get 'press',        to: 'static_pages#press'
  get 'participate',  to: 'static_pages#participate'
  get 'contact',      to: 'static_pages#contact'
  get 'imprint',      to: 'static_pages#imprint'

  root 'static_pages#home'
end
