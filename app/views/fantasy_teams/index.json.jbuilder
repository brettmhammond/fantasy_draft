json.array!(@fantasy_teams) do |fantasy_team|
  json.extract! fantasy_team, :id, :name, :owner, :logo
  json.url fantasy_team_url(fantasy_team, format: :json)
end
