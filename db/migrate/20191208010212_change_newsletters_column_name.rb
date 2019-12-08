class ChangeNewslettersColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :newsletters, :publish_date, :date
  end
end
