class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :link
      t.string :description
      t.integer :upvotes, :default => 1
      t.belongs_to :user

      t.timestamps
    end
  end
end
