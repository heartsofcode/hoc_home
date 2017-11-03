Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/calendar'

  get 'static_pages/blog'

  get 'static_pages/press'

  get 'static_pages/participate'

  get 'static_pages/contact'

  get 'static_pages/imprint'

  root 'static_pages#home'
end
