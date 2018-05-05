require 'httparty'

class Api
  include HTTParty
  base_uri 'http://localhost:5000'

  def initialize
  end

  def search(query)
    self.class.get("/api/events/search/#{query}")
  end
end