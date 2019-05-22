class CreateArticle3s < ActiveRecord::Migration[5.2]
  def change
    create_table :article3s do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
