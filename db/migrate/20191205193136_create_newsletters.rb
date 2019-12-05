class CreateNewsletters < ActiveRecord::Migration[6.0]
  def change
    create_table :newsletters do |t|
      t.string :title
      t.string :sub_title
      t.datetime :publish_date
      t.string :summary
      t.belongs_to :user

      t.timestamps
    end
  end
end
