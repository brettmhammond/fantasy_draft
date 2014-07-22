class CreatePlayerProjections < ActiveRecord::Migration
  def change
    create_table :player_projections do |t|
      t.references :player, index: true
      t.integer :year
      t.integer :fantasy_points
      t.integer :completions
      t.integer :attempts
      t.integer :pass_yards
      t.integer :pass_tds
      t.integer :pass_ints
      t.integer :rush_yards
      t.integer :rush_tds

      t.timestamps
    end
  end
end
