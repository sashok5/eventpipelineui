class CreateEventSimilarity < ActiveRecord::Migration[5.1]
  def change
    create_table :event_similarities do |t|
      t.integer :event_id_1
      t.integer :event_id_2
      t.float :similarity
    end
  end
end
