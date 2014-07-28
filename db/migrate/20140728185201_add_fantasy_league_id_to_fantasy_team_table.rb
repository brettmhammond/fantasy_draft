class AddFantasyLeagueIdToFantasyTeamTable < ActiveRecord::Migration
  def change
    add_reference :fantasy_teams, :fantasy_league, index: true
  end
end
