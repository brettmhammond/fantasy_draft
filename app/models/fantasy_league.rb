class FantasyLeague < ActiveRecord::Base
    has_many :fantasy_teams
    has_many :fantasy_drafts
end
