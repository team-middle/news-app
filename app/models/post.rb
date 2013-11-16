class Post < ActiveRecord::Base
  belongs_to :user
  has_many :user_upvoted_posts
  
  def upvote(user)
    self.user_upvoted_posts.create(:user => user)
    self.upvotes += 1
  end

  def user_upvoted?(user)
    self.user_upvoted_posts.each do |upvote|
      if upvote.user_id == user.id 
        return true
      end
    end
    return false
  end

end
