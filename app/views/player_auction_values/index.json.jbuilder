json.array!(@player_auction_values) do |player_auction_value|
  json.extract! player_auction_value, :id, :player_id, :year, :min_price, :max_price, :avg_price
  json.url player_auction_value_url(player_auction_value, format: :json)
end
