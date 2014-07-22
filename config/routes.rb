Rails.application.routes.draw do
  resources :fantasy_drafts
  resources :fantasy_draft_orders
  resources :fantasy_draft_styles
  resources :fantasy_players
  resources :fantasy_teams
  resources :fantasy_leagues
  resources :player_auction_values
  resources :player_projections
  resources :player_ranks
  resources :players
  resources :positions
  resources :byes
  resources :schedules
  resources :teams
  resources :leagues

  root 'players#index'
end
