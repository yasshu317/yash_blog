class User < ActiveRecord::Base
  attr_accessible :name, :oauth_expires_at, :oauth_token, :provider, :uid

  has_one :user_profile

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      build_user_profile(auth, user)
      user.save!
    end
  end

  def self.build_user_profile(auth, user)
    user_profile = user.build_user_profile
    user_profile.first_name = auth.info.first_name
    user_profile.last_name =auth.info.last_name
    user_profile.gender = auth.extra.raw_info.gender
    user_profile.email = auth.extra.raw_info.email
  end

end
