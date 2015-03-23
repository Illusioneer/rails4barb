class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :title
      t.string :title_slug
      t.string :author
      t.string :content
      t.json :tags
      t.json :comments

      t.timestamps null: false
    end
  end
end
