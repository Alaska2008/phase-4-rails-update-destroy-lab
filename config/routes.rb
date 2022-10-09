Rails.application.routes.draw do
  resources :plants, only: [:index, :show, :create, :update, :destroy]
  patch "/plants/:id/", to: "plants#increment_stocks"
end
