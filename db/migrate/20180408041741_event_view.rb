class EventView < ActiveRecord::Migration[5.1]
  def change
    create_table :event_views do |t|
      t.bigint :event_id
      t.bigint :user_id
      t.timestamps
    end
    add_foreign_key :event_views, :events, column: :event_id, primary_key: :event_id
    add_foreign_key :event_views, :users, column: :user_id, primary_key: :user_id

  end
end
