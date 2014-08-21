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

  resources :fantasy_leagues do
    resources :fantasy_drafts
    resources :fantasy_teams do
      resources :fantasy_players
    end
    resources :fantasy_drafts do
      get '/manager', to: 'fantasy_drafts#manager'
      get '/players', to: 'fantasy_drafts#players'
      resources :fantasy_players
      resources :fantasy_draft_orders
    end
  end

  root 'fantasy_leagues#index'
end
