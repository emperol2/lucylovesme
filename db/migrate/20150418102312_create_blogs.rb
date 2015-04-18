class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :image
      t.text :desc
      t.text :tag
      t.integer :user_id

      t.timestamps
    end
  end
end
