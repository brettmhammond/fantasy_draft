json.array!(@drafts) do |draft|
  json.extract! fantasy_draft, :id, :fantasy_league_id, :fantasy_draft_style_id, :player_id, :max_amount, :rounds
  json.url draft_url(fantasy_draft, format: :json)
end
