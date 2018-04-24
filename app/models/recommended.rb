class Recommended < ApplicationRecord
  self.table_name = 'recommended'
  default_scope { order(rank: :desc) }

  def self.events
    order(:rank).limit(20).map do |r|
      Event.find(r.event_id)
    end
  end
end
