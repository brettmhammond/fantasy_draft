class CreateFantasyLeagues < ActiveRecord::Migration
  def change
    create_table :fantasy_leagues do |t|
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
