class AddBlogImagesToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :blog_images, :string
  end
end
