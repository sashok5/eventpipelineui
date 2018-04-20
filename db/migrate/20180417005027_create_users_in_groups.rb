class CreateUsersInGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :users_in_groups do |t|
      t.integer :user_id
      t.integer :group_id

    end
  end
end
