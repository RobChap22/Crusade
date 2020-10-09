class RemoveSupplyTypeFromForces < ActiveRecord::Migration[6.0]
  def change
    remove_column :forces, :supply_type, :string
  end
end
