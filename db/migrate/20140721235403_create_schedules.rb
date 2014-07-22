class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :ffn_game_id, index: true
      t.references :away_team, index: true
      t.references :home_team, index: true
      t.integer :year
      t.integer :week
      t.date :date
      t.string :time
      t.string :broadcaster

      t.timestamps
    end
  end
end
