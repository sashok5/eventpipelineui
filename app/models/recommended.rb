class Recommended < ApplicationRecord
  self.table_name = 'recommended'
  self.inheritance_column = nil
  default_scope { order(rank: :desc) }

  TYPES = {
      popular: 1,
      follower: 2,
      content: 3,
      collaborative: 4
  }

  def self.popular
    where(type: TYPES[__method__])
  end

  def self.follower
    where(type: TYPES[__method__])
  end

  def self.content
    where(type: TYPES[__method__])
  end

  def self.collaborative
    where(type: TYPES[__method__])
  end

  def self.events(user)
    where(user_id: user.id).order(:rank).limit(20).map do |r|
      event = Event.find(r.event_id)
      next if event.state != user.state
      event
    end.compact
  end
end
