class CreateFantasyPlayers < ActiveRecord::Migration
  def change
    create_table :fantasy_players do |t|
      t.references :fantasy_league, index: true
      t.references :fantasy_team, index: true
      t.references :fantasy_draft, index: true
      t.references :player, index: true

      t.timestamps
    end
  end
end
