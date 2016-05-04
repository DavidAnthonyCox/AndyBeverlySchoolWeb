require 'httparty'

def get_moodle
  response = HTTParty.get('http://localhost:8888/moodle29/')
  puts response
end

get_moodle