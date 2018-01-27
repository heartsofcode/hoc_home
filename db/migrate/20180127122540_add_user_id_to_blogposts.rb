class AddUserIdToBlogposts < ActiveRecord::Migration[5.1]
  def change
    add_column :blogposts, :user_id, :int
  end
end
