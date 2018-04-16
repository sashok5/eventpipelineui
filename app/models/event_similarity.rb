class EventSimilarity < ApplicationRecord
  default_scope { order(similarity: :desc) }
  validates_uniqueness_of :event_id_1, scope: :event_id_2
end
