class AddPriceToFantasyPlayers < ActiveRecord::Migration
  def change
    add_column :fantasy_players, :price, :integer
  end
end
