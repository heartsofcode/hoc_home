Rails.application.routes.draw do
  devise_for :users
  resources :blogposts
  root 'static_pages#home'

  get 'about',        to: 'static_pages#about'
  get 'calendar',     to: 'static_pages#calendar'
  get 'press',        to: 'static_pages#press'
  get 'blog',         to: 'static_pages#blog'
  get 'participate',  to: 'static_pages#participate'
  get 'contact',      to: 'static_pages#contact'
  get 'imprint',      to: 'static_pages#imprint'

end
