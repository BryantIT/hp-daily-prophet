class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.text :body
      t.belongs_to :newsletter

      t.timestamps
    end
  end
end
