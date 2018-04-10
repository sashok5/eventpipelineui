class CreateEventCategory < ActiveRecord::Migration[5.1]
  def change
    create_table :event_categories, primary_key: :category_id, id: :bigint do |t|
      t.string :name
      t.timestamps
    end
    add_index :event_categories, :name, unique:true
  end
end
