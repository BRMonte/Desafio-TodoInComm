Rails.application.routes.draw do
  get 'transactions/index'
  get 'transactions/show'
  get 'home/index'
  devise_for :giftcards
  root to: "home#index"
end
