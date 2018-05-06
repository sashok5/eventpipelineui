class Popular < ApplicationRecord
  self.table_name = 'popular'
  self.primary_key = :event_id

  def self.events(limit)
    order(num_of_attending: :desc, num_of_clicks: :desc).limit(limit).map do |p|
      e = Event.find(p.id)
      next unless e.state == 'NY'
      e
    end.compact
  end
end
