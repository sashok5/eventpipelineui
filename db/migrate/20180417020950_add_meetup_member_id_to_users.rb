class AddMeetupMemberIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :member_id, :string
  end
end
