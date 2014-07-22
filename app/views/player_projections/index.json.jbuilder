json.array!(@player_projections) do |player_projection|
  json.extract! player_projection, :id, :player_id, :year, :fantasy_points, :completions, :attempts, :pass_yards, :pass_tds, :pass_ints, :rush_yards, :rush_tds
  json.url player_projection_url(player_projection, format: :json)
end
