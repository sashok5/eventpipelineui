require 'httparty'

class Api
  include HTTParty
  base_uri 'http://localhost:5000'

  def initialize
  end

  def search(query)
    query = query.gsub(' ', '%20')
    results = self.class.get("/api/events/search/#{query}").parsed_response
    JSON.parse(results['result'])
  end
end