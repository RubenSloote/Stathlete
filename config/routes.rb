Rails.application.routes.draw do

  root "games#index"

  get "games" => "games#index"
  get "games/:id" => "games#show", as: :game

end
