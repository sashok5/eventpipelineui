class AddMeetupIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :meetup_id, :string

  end
end
