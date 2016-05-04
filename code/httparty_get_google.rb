require 'httparty'

def get_google
  response = HTTParty.get('http://google.com')
  puts response
end

get_google