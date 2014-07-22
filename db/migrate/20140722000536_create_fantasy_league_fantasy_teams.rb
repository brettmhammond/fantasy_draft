class CreateFantasyLeagueFantasyTeams < ActiveRecord::Migration
  def change
    create_table :fantasy_leagues_fantasy_teams do |t|
      t.references :fantasy_league, index: true
      t.references :fantasy_team, index: true
    end
  end
end
