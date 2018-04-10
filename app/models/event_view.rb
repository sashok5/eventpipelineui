class EventView < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  def self.save_click(event, user)
    @new_view = EventView.new()
    @new_view.event = event
    @new_view.user = user
    @new_view.save()
  end

end
