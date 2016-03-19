class SnowPack < ActiveRecord::Base

  def self.avg_depth_per_region_per_year
    sql = "SELECT date_trunc('year', snow_packs.date), region, AVG(snow_packs.depth)
          FROM snow_packs, regional_districts
          WHERE snow_packs.regional_district_id = regional_districts.id
          GROUP BY date_trunc('year', snow_packs.date), regional_districts.region
          ORDER BY region ASC, date_trunc('year', snow_packs.date)"
    result =  ActiveRecord::Base.connection.execute(sql)
    hash = result.as_json
    return hash
  end

  def self.avg_depth_per_region_all_years
    sql = "SELECT region, CAST(AVG(snow_packs.depth) AS numeric(10,2))
          FROM snow_packs, regional_districts
          WHERE snow_packs.regional_district_id = regional_districts.id
          GROUP BY region
          ORDER BY region ASC"
    result =  ActiveRecord::Base.connection.execute(sql)
    hash = result.to_json
    return hash
  end

end
