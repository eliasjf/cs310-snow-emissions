class SnowEmissionsStats

  def self.calculateSnowSD
    # Here's that machine learning stuff... Read up on the
    #   descriptive-statistics gem for mo' info.

    s = SnowPack.avg_depth_per_region_per_year.collect do |dep|
      dep["avg"].to_i
    end

    snows = DescriptiveStatistics::Stats.new(s)
    snowSD = snows.relative_standard_deviation

    return snowSD.round.to_s

  end




  def self.calculateSnowKurtosis

    s = SnowPack.avg_depth_per_region_per_year.collect do |dep|
      dep["avg"].to_i
    end

    snows = DescriptiveStatistics::Stats.new(s)
    snowKurt = snows.kurtosis

    return snowKurt.round.to_s
  end





  def self.calculateEmisSD

    e = Emission.total_emissions_per_region_per_year.collect do |em|
      em["sum"].to_i
    end

    emiss = DescriptiveStatistics::Stats.new(e)
    emisSD = emiss.relative_standard_deviation

    return emisSD.round.to_s
  end




  def self.calculateEmisKurtosis

    e = Emission.total_emissions_per_region_per_year.collect do |em|
      em["sum"].to_i
    end

    emiss = DescriptiveStatistics::Stats.new(e)
    emisKurt = emiss.kurtosis

    return emisKurt.round.to_s
  end


  def self.calculateCrudeCorrelation

    e = Emission.total_emissions_per_region_per_year.collect do |em|
      em["sum"].to_i
    end

    s = SnowPack.avg_depth_per_region_per_year.collect do |sn|
      sn["avg"].to_i
    end

    snow = DescriptiveStatistics::Stats.new(s)
    emis = DescriptiveStatistics::Stats.new(e)
  end



end