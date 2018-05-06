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

  def self.events
    order(:rank).limit(20).map do |r|
      Event.find(r.event_id)
    end
  end

  def self.popular(user)
    where(user_id: user.id).where(type: TYPES[__method__])
  end

  def self.follower(user)
    where(user_id: user.id).where(type: TYPES[__method__])
  end

  def self.content(user)
    where(user_id: user.id).where(type: TYPES[__method__])
  end

  def self.collaborative(user)
    where(user_id: user.id).where(type: TYPES[__method__])
  end
end
