class FantasyDraft < ActiveRecord::Base
  belongs_to :fantasy_league
  belongs_to :fantasy_draft_style
  belongs_to :player

end
