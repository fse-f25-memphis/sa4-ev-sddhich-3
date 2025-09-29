Rails.application.routes.draw do
  resources :video_games, only: [:index, :new, :create, :destroy]
  root to: redirect('/video_games')
end

