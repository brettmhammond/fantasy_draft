class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.references :league, index: true
      t.string :name
      t.string :city
      t.string :key, index: true
      t.string :conference
      t.string :division
      t.string :logo
      t.string :string

      t.timestamps
    end
  end
end
