class AddRegionalDistrictToEmissions < ActiveRecord::Migration
  def change
    add_reference :emissions, :regional_district, index: true, foreign_key: true
  end
end
