class EventCategory < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }

  def events
    Event.where(category_id: id)
  end

  def image
    images = Dir.glob('app/assets/images/interests/*.{gif,jpeg,png}')
    image = images.find{ |s| s.gsub(/[^0-9a-z ]/i, '').downcase.include?(name.gsub(/[^0-9a-z ]/i, '').downcase) }
    image ? "interests/#{image.split('/').last}" : 'rails.png'
  end
end
