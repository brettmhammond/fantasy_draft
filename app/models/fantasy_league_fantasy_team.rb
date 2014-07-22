class FantasyLeagueFantasyTeam < ActiveRecord::Base
  belongs_to :fantasy_league
  belongs_to :fantasy_team
end
