class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :about
      t.text :tag1
      t.text :tag2
      t.text :tag3
      t.text :tag4
      t.text :thinking
      t.text :skills

      t.timestamps
    end
  end
end
