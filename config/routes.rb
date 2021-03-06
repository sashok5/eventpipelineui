GroupUp::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers, :created_events, :past_events
      put :update_interests
    end
  end
  post '/recommend', to: 'users#recommend', as: :recommend
  resources :events do
    member do
      get 'interest'
      post 'attend'
      put 'rsvp'
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :relationships, only: [:create, :destroy]

  get '/upcoming', to: 'events#upcoming', as: :upcoming
  root to: 'pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'pages#help',    via: 'get'
  match '/about',   to: 'pages#about',   via: 'get'
  match '/contact', to: 'pages#contact', via: 'get'
  match '/donate',  to: 'pages#donate', via: [:get, :post]
  match '/events',  to: 'events#index',        via: 'get'
  #match '/created_events', to: 'users#created_events', via:'get'
  #match '/attending_events', to: 'users#attending_events', via:'get'
  match '/newevent', to: 'events#new', via:'get'
  post '/search', to: 'events#search'

  concern :admin do
    collection do
      get :admin
    end
  end

  namespace :admin do
    match '/similarities', to: 'similarities#index', via: [:get, :post]
    match '/topics', to: 'topics#index', via: [:get, :post]
  end



end
