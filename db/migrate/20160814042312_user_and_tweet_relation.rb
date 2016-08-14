class UserAndTweetRelation < ActiveRecord::Migration[5.0]
  def change
      remove_column :tweets, :author
      add_reference :tweets, :user, index: true
  end
end
