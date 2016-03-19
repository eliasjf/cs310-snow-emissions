class AddRegionalDistrictToSnowPacks < ActiveRecord::Migration
  def change
    add_reference :snow_packs, :regional_district, index: true, foreign_key: true
  end
end
