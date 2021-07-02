Rails.application.routes.draw do

  resources :transactions, only: [:index]

  root to: 'home#index'

  devise_for :giftcards, controllers: {
    sessions: 'giftcards/sessions'
  }

end
