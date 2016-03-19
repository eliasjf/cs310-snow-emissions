class CreateRegionalDistricts < ActiveRecord::Migration
  def change
    create_table :regional_districts do |t|
      t.decimal :central_lat
      t.decimal :central_lon

      t.timestamps null: false
    end
  end
end
