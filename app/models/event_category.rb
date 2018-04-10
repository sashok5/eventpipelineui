class EventCategory < ApplicationRecord
  has_many :event

  validates :name, presence: true, length: { maximum: 100 }
end
