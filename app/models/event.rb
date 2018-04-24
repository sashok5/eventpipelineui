class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "created_by_user_id"
  belongs_to :event_category, class_name: "EventCategory", foreign_key: "category_id"
  has_and_belongs_to_many :tags, join_table: "event_tags"
  has_many :attendances
  has_many :users, through: :attendances
  default_scope -> { order('event_date ASC') }
  validates :desc, presence: true, length: { maximum: 1000 }
  validates :created_by_user_id, presence: true

  def self.upcoming(after = DateTime.now, limit = 100)
    where('event_date > ?', after)
  end

  def self.past
    where('event_date < ?', DateTime.now)
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
    event_ids = EventSimilarity.where(event_id_1: id).map(&:event_id_2)
    return [] unless event_ids.any?
    events = Event.where(:event_id => event_ids)
    events = event_ids.map {|id| events.detect {|event| event.event_id == id } }
    events.first(10)
  end

  def similarity(main_event)
    rel = EventSimilarity.where(event_id_1: main_event.id, event_id_2: id).first
    return unless rel
    rel.similarity
  end

end
