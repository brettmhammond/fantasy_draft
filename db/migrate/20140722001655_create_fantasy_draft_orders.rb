class CreateFantasyDraftOrders < ActiveRecord::Migration
  def change
    create_table :fantasy_draft_orders do |t|
      t.references :fantasy_league, index: true
      t.references :fantasy_team, index: true
      t.references :fantasy_draft, index: true
      t.integer :position

      t.timestamps
    end
  end
end
