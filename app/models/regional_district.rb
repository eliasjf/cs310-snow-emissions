class RegionalDistrict < ActiveRecord::Base
  has_many :emissions, :dependent => :delete_all
  has_many :snow_packs, :dependent => :delete_all
end
