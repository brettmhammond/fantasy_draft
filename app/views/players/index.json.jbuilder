json.array!(@players) do |player|
  json.extract! player, :id, :league_id, :team_id, :position_id, :ffn_player_id, :college, :first_name, :last_name, :name, :height, :weight, :uniform_number, :date_of_birth, :active
  json.url player_url(player, format: :json)
end
