class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :league, index: true
      t.references :team, index: true
      t.references :position, index: true
      t.integer :ffn_player_id
      t.string :college
      t.string :first_name
      t.string :last_name
      t.string :name
      t.string :height
      t.string :weight
      t.string :uniform_number
      t.string :date_of_birth
      t.boolean :active

      t.timestamps
    end
  end
end
