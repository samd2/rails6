class CreateArticles2s < ActiveRecord::Migration[5.2]
  def change
    create_table :articles2s do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
