json.array!(@player_ranks) do |player_rank|
  json.extract! player_rank, :id, :player_id, :year, :position_rank, :overall_rank
  json.url player_rank_url(player_rank, format: :json)
end
