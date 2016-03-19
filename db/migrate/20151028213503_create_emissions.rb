class CreateEmissions < ActiveRecord::Migration
  def change
    create_table :emissions do |t|
      t.decimal :total_emission
      t.decimal :lat
      t.decimal :lon
      t.date :date

      t.timestamps null: false
    end
  end
end
