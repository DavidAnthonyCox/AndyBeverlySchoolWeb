require 'moodle'
admin_token = 'c3446050a490b36dc1f45e7aaaefa3d1'
web_services_token = 'cb2d514a4d5567dc818e13890e9f941e'

# client = Moodle::Client.new( :username => 'admin', :password => '12345', :protocol => 'rest', :domain => 'http://localhost:8888/moodle29/', :service => 'myservice', :format => 'json' )

client = Moodle::Client.new(
  :token => web_services_token,
  :protocol => 'rest',
  :domain => 'http://localhost:8888/moodle29/',
  :service => 'user',
  :format => 'json'
)


puts client.token

# courses = client.core_course_get_courses([1, 2])
# puts courses.class
user = client.core_user_get_users_by_field(:id, [4])
puts user.class
# users = client.core_user_get_users({id: 2})
# puts users.class
#puts client
#
#user = client.core_user_get_users_by_field('id', [2])

#
#class ClientTest < Test::Unit::TestCase
  # Test initialization with hash
 # def test_initialize_with_hash
  #  client = Moodle::Client.new({
   #   :username => 'test_username',
    #  :password => 'test_password',
     # :domain   => 'test_domain',
     # :protocol => 'test_protocol',
      #:service => 'test_service',
      #:format => 'test_format',
      #:token => 'test_token'
    #})

   # assert_equal 'test_username', client.username
   # assert_equal 'test_password', client.password
   # assert_equal 'test_domain', client.domain
   # assert_equal 'test_protocol', client.protocol
   # assert_equal 'test_service', client.service
   # assert_equal 'test_format', client.format
   # assert_equal 'test_token', client.token
  #end
#end
#/