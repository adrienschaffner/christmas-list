Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    resources :giftlists do
      collection do
        get :top
      end
    end
  end
  # root to: 'pages#home'
  # get 'giftlists/new', to: 'giftlists#new', as: :new_giftlist
  # post 'giftlists', to: 'giftlists#create'
  # get 'giftlists', to: 'giftlists#index', as: :all_giftlist
  # get 'giftlists/:id', to: 'giftlists#show', as: :giftlist
  # get 'giftlists/:id/edit', to: 'giftlists#edit'
  # patch 'giftlists/:id', to: 'giftlists#update'
  # delete 'giftlists/:id', to: 'giftlists#destroy'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # Defines the root path route ("/")
  # root "articles#index"
end
