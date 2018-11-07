Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :create]

  resources :restaurants do
    resources :reviews, only: [:create]
  end

  get 'restaurants/:id/reviews' => "restaurants#show", as: :reviews

  namespace :admin do
    resources :restaurants, only: [:index, :show, :new, :create, :delete]

    resources :restaurants do
      resources :reviews, only: [:show, :new, :create, :delete]
    end
  end
end
