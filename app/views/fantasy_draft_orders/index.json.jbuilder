json.array!(@fantasy_draft_orders) do |fantasy_draft_order|
  json.extract! fantasy_draft_order, :id, :fantasy_league_id, :fantasy_team_id, :fantasy_draft_id, :position
  json.url fantasy_draft_order_url(fantasy_draft_order, format: :json)
end
