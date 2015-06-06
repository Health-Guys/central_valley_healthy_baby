class ChangeCaliforniaRegionTypeToStringPrevalance < ActiveRecord::Migration
  def change
    change_column :prevalances, :california_region, :string
  end
end
