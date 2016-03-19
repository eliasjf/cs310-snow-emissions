class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    # Creates user from oauth information
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email # this will always be nil for now since we aren't requesting the proper privileges
      user.image = auth.info.image
      user.is_admin = 0
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def self.get_users
    sql = "SELECT uid, name, is_admin
          FROM users
          ORDER BY name ASC"
    result =  ActiveRecord::Base.connection.execute(sql)
    hash = result.as_json
    # result.free
    puts hash
    return hash
  end

end
