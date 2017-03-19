Rails.application.routes.draw do
  root 'demo#index'

  resources :pages do
    member do
      get :delete
    end
  end

  resources :sections do
    member do
      get :delete
    end
  end

  resources :subjects do
    member do
      get :delete
    end
  end

  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'

  # default route, may be obsolete in later versions of rails
  # get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
