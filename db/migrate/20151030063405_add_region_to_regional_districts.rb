class AddRegionToRegionalDistricts < ActiveRecord::Migration
  def change
    add_column :regional_districts, :region, :string
  end
end
