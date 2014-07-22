class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :fantasy_drafts do |t|
      t.references :fantasy_league, index: true
      t.references :fantasy_draft_style, index: true
      t.references :player, index: true
      t.integer :max_amount
      t.integer :rounds

      t.timestamps
    end
  end
end
