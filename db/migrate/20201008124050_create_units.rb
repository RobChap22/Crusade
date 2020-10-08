class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.references :force, null: false, foreign_key: true
      t.string :name
      t.string :role
      t.integer :supply_value
      t.integer :experience_points
      t.integer :crusade_points
      t.string :unit_type
      t.string :rank
      t.text :equipment

      t.timestamps
    end
  end
end
