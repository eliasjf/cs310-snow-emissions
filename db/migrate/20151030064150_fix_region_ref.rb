class FixRegionRef < ActiveRecord::Migration
  def change
    remove_reference :emissions, :regional_district
    remove_reference :snow_packs, :regional_district
    add_reference :emissions, :regional_district, index: true, foreign_key: {:on_delete => :cascade, :on_update => :cascade}
    add_reference :snow_packs, :regional_district, index: true, foreign_key: {:on_delete => :cascade, :on_update => :cascade}
  end
end
