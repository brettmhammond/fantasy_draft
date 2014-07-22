json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :ffn_game_id, :away_team_id, :home_team_id, :year, :week, :date, :time, :broadcaster
  json.url schedule_url(schedule, format: :json)
end
