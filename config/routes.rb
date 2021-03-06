Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
end
