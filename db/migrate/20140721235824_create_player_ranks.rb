class CreatePlayerRanks < ActiveRecord::Migration
  def change
    create_table :player_ranks do |t|
      t.references :player, index: true
      t.integer :year
      t.integer :position_rank
      t.integer :overall_rank

      t.timestamps
    end
  end
end
