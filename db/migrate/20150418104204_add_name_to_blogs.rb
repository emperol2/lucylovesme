class AddNameToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :name, :text
  end
end
