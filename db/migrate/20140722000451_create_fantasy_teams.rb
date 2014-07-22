class CreateFantasyTeams < ActiveRecord::Migration
  def change
    create_table :fantasy_teams do |t|
      t.string :name
      t.string :owner
      t.string :logo

      t.timestamps
    end
  end
end
