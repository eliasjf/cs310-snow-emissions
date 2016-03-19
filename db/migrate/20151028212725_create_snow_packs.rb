class CreateSnowPacks < ActiveRecord::Migration
  def change
    create_table :snow_packs do |t|
      t.string :city
      t.date :date
      t.integer :depth

      t.timestamps null: false
    end
  end
end
