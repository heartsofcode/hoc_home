class FixColumnNameAuthorName < ActiveRecord::Migration[5.1]
  def change
    rename_column :blogposts, :author_name, :display_name
  end
end
