json.array!(@fantasy_players) do |fantasy_player|
  json.extract! fantasy_player, :id, :fantasy_league_id, :fantasy_team_id, :fantasy_draft_id, :player_id
  json.url fantasy_player_url(fantasy_player, format: :json)
end
