Rail 4:

Travelpoker::Application.routes.draw do

  resources :decks, concerns: :likeable
  resources :cards, concerns: [:commentable, :likeable]
      
  resources :users, only: [:show, :index] do
    resources :cards, only: [:index]
    resources :decks, only: [:index]
  end

  concern :commentable do
    resources :comments do
      match '/up-vote', to: 'votes#up_vote', as: :up_vote
      match '/down-vote', to: 'votes#down_vote', as: :down_vote
    end
  end


  concern :likeable do
    resources :likes, only: [:create, :destroy]
  end

  match "about" => 'welcome#about', via: :get
  root :to => 'welcome#index'
end

Rails 3:

Travelpoker::Application.routes.draw do

  resources :decks do
    resources :likes, only: [:create, :destroy]
  end
  resources :cards do 
    resources :likes, only: [:create, :destroy]
    resources :comments do
      match '/up-vote', to: 'votes#up_vote', as: :up_vote
      match '/down-vote', to: 'votes#down_vote', as: :down_vote
    end
  end
      
  resources :users, only: [:show, :index] do
    resources :cards, only: [:index]
    resources :decks, only: [:index]
  end

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
end




