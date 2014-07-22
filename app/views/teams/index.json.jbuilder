json.array!(@teams) do |team|
  json.extract! team, :id, :league_id, :name, :city, :key, :conference, :division, :logo, :string
  json.url team_url(team, format: :json)
end
