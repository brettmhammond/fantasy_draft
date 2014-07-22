json.array!(@fantasy_draft_styles) do |fantasy_draft_style|
  json.extract! fantasy_draft_style, :id, :name
  json.url fantasy_draft_style_url(fantasy_draft_style, format: :json)
end
