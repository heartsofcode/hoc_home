class AddImageToBlogposts < ActiveRecord::Migration[5.1]
  def change
    add_column :blogposts, :image_data, :text
  end
end
