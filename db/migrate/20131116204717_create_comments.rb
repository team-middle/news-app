class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :post, index: true
      t.belongs_to :user, index: true
      t.text :content
      t.integer :upvotes

      t.timestamps
    end
  end
end
