class AddTypeToRecommend < ActiveRecord::Migration[5.1]
  def change
    add_column :recommended, :type, :integer
  end
end
