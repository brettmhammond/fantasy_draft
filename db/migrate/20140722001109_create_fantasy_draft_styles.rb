class CreateFantasyDraftStyles < ActiveRecord::Migration
  def change
    create_table :fantasy_draft_styles do |t|
      t.string :name

      t.timestamps
    end
  end
end
