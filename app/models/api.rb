require 'httparty'

class Api
  include HTTParty
  base_uri 'http://localhost:5000'

  def initialize ;end

  def search(query)
    query = query.gsub(' ', '%20')
    results = self.class.get("/api/events/search/#{query}").parsed_response
    find_events(JSON.parse(results['result']))
  end

  def recommend(user)
    self.class.get("/api/users/#{user.id}")
  end

  def find_events(results)
    return [] unless results.any?
    results.map do |event|
      Event.find(event['event_id'])
    end
  end
end