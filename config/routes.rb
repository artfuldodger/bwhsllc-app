Bwhs::Application.routes.draw do
  # root to: "services#index"

  namespace :admin do
    resources :services
    resources :sessions, only: [:new, :create, :destroy]
  end
end
