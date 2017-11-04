class CreateBlogposts < ActiveRecord::Migration[5.1]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.text :description
      t.string :author_name
      t.datetime :published_at
      t.string :slug

      t.timestamps
    end
  end
end
