class AddSupplyTypeToForces < ActiveRecord::Migration[6.0]
  def change
    add_column :forces, :supply_type, :string
  end
end
