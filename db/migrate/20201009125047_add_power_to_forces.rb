class AddPowerToForces < ActiveRecord::Migration[6.0]
  def change
    add_column :forces, :power, :boolean
  end
end
