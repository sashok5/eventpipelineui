class CreatePopular < ActiveRecord::Migration[5.1]
  def change
    create_table :popular, primary_key: 'event_id' do |t|
      t.integer :num_of_attending
      t.integer :num_of_clicks

    end
    add_index :popular, :event_id
  end
end
