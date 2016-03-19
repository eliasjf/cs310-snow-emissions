class Emission < ActiveRecord::Base

  def self.total_emissions_per_region_per_year
    sql = "SELECT date_trunc('year', emissions.date), region, SUM(emissions.total_emission)
          FROM emissions, regional_districts
          WHERE emissions.regional_district_id = regional_districts.id
          GROUP BY date_trunc('year', emissions.date), regional_districts.region
          ORDER BY region ASC, date_trunc('year', emissions.date) ASC"
    result =  ActiveRecord::Base.connection.execute(sql)
    hash = result.as_json
    return hash
  end

  def self.total_emissions_per_region
    sql = "SELECT region, SUM( ROUND(emissions.total_emission, 2))
          FROM emissions, regional_districts
          WHERE emissions.regional_district_id = regional_districts.id
          GROUP BY regional_districts.region
          ORDER BY region ASC"
    result = ActiveRecord::Base.connection.execute(sql)
    hash = result.to_json
    return hash
  end

  private

  # PRE:  takes a JSON blob that is initially created from a db record
  # POST: modifies structure so that it is more descriptive of a region
  # {"date_trunc"=>"2010-01-01 00:00:00+00", "region"=>"Alberni-Clayoquot", "sum"=>"32312.061"}
  def re_build_json(data_base_record)
    hash = {}
    hash["regions"] = {}
    hash["regions"]["region"] = {}
    hash["regions"]["region"]["name"] = nil
    hash["regions"]["region"]["years"] = []

    data_base_record.each do |record|
      hash["regions"]["region"]["name"] = data_base_record["region"]
      hash["regions"]["name"] = data_base_record["region"]
    end
  end

end
