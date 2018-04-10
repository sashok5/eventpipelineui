class AddCategoryIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :category_id, :bigint
    add_foreign_key :events, :event_categories, column: :category_id, primary_key: :category_id
  end
end
