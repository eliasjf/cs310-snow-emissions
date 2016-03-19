require 'csv'

namespace :import do

  desc 'Import Regional District data'
  task :regional_district_data => :environment do
    RegionalDistrict.delete_all
    CSV.foreach('data/Regions.csv', {:headers => true}) do |row|
      RegionalDistrict.create!({:region => row[0],
                                :central_lat => row[1],
                                :central_lon => row[2]
                               })
    end
  end

  desc 'Import Emission data'
  task :emission_data => :environment do
    Emission.delete_all
    CSV.foreach('data/emissions.csv', {:headers => true}) do |row|
      if row[3] # Only add values that have a region
        region = RegionalDistrict.where(region: row[3]).take
        Emission.create!({:total_emission => row[4],
                          :lat => row[1],
                          :lon => row[2],
                          :date => row[0],
                          :regional_district_id => region.id
                         })
      end
    end
  end

  desc 'Import Snow Pack data'
  task :snow_pack_data => :environment do
    SnowPack.delete_all
    CSV.foreach('data/snow.csv', {:headers => true}) do |row|
      if row[5] # Only add values that have a region
        region = RegionalDistrict.where(region: row[5]).take
        SnowPack.create!({:city => row[0],
                          :date => row[1],
                          :depth => row[2],
                          :regional_district_id => region.id
                         })
      end
    end
  end

  desc 'run import script'
  task :all => [:regional_district_data, :emission_data, :snow_pack_data]
end
