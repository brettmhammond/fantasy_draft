class CreateByes < ActiveRecord::Migration
  def change
    create_table :byes do |t|
      t.references :team, index: true
      t.integer :year
      t.integer :week

      t.timestamps
    end
  end
end
