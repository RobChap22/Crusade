class CreateForces < ActiveRecord::Migration[6.0]
  def change
    create_table :forces do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :faction
      t.integer :battle_tally
      t.integer :battles_won
      t.integer :requisition_points
      t.integer :supply_limit
      t.integer :supply_used

      t.timestamps
    end
  end
end
