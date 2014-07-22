json.array!(@fantasy_league_fantasy_teams) do |fantasy_league_fantasy_team|
  json.extract! fantasy_league_fantasy_team, :id, :fantasy_league_id, :fantasy_team_id
  json.url fantasy_league_fantasy_team_url(fantasy_league_fantasy_team, format: :json)
end
