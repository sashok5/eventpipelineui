class CreateEventGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :event_groups, primary_key: 'group_id' do |t|

      t.integer :category_id
      t.string :city
      t.string :country
      t.string :description
      t.string :group_name
      t.string :state
      t.datetime :created
      t.integer :members

    end
  end
end
