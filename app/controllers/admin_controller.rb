require 'rake'

class AdminController < ActionController::Base

  def admin
    #find current user
    current_user ||= User.find(session[:user_id]) if session[:user_id]

    if current_user == nil || !current_user.is_admin
      redirect_to "/"
    end

    #give all users to admin page
    @users = User.get_users
  end

  
  # Seed the database
  def seedDB
    RegionalDistrict.delete_all
    CSV.foreach('data/Regions.csv', {:headers => true}) do |row|
      RegionalDistrict.create!({:region => row[0],
                                :central_lat => row[1],
                                :central_lon => row[2]
                               })
    end
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
    render template: "admin/admin.html.erb"
  end

end