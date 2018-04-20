class AddShortnameToEventCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :event_categories, :shortname, :string
  end
end
