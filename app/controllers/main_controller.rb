class MainController < ApplicationController
  def index
    @total_emissions_per_region_per_year = Emission.total_emissions_per_region_per_year
    @avg_depth_per_region_per_year  = SnowPack.avg_depth_per_region_per_year

    @total_emissions_per_region = Emission.total_emissions_per_region
    @avg_depth_per_region_all_years  = SnowPack.avg_depth_per_region_all_years

    @snowSD = SnowEmissionsStats.calculateSnowSD
    @emisSD = SnowEmissionsStats.calculateEmisSD
    @snowKurt = SnowEmissionsStats.calculateSnowKurtosis
    @emisKurt = SnowEmissionsStats.calculateEmisKurtosis

  end
end