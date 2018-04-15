class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "created_by_user_id"
  belongs_to :event_category, class_name: "EventCategory", foreign_key: "category_id"
  has_and_belongs_to_many :tags, join_table: "event_tags"
  has_many :attendances
  has_many :users, through: :attendances
  default_scope -> { order('event_date ASC') }
  validates :desc, presence: true, length: { maximum: 1000 }
  validates :created_by_user_id, presence: true
  # geocoded_by :full_address
  # after_validation :geocode

  def self.upcoming(after = DateTime.now, limit = 100)
    where('event_date > ?', after)
  end

  def full_address
    ["#{addr} #{street}", city, state, zip].compact.join(', ')
  end

  def category
    EventCategory.find(category_id)
  end

  def num_attending
    Attendance.where(event_id: id).count
  end

  def attending
  end

  def similar
    events = category.events.select{ |e| e.event_id != id }
    return [] unless events.any?
    events.first(5)
  end

end
