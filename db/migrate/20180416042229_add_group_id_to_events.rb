class AddGroupIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :group_id, :integer
    add_column :events, :rsvp_count, :integer
  end
end
