class CreateUserUpvotedPosts < ActiveRecord::Migration
  def change
    create_table :user_upvoted_posts do |t|
      t.belongs_to :user, index: true
      t.references :post, index: true

      t.timestamps
    end
  end
end
