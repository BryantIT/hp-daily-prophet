class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :byline
      t.text :body
      t.belongs_to :newsletter
      t.timestamps
    end
  end
end
