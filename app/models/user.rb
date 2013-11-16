class User < ActiveRecord::Base
  has_many :posts
  has_many :user_upvoted_posts
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
    end
  end

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_with_omniauth(auth)
  end

end
