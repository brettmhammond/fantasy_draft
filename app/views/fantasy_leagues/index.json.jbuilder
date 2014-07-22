json.array!(@fantasy_leagues) do |fantasy_league|
  json.extract! fantasy_league, :id, :name, :password
  json.url fantasy_league_url(fantasy_league, format: :json)
end
