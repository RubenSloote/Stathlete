Rails.application.routes.draw do

  root "games#index"

  get "games" => "games#index"

end
