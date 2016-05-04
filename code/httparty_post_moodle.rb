require 'httparty'

def post_moodle
  response = HTTParty.post('http://localhost:8888/moodle29/webservice/rest/server.php') {
     :query => query_hash('core_message_send_instant_messages', '140e55a43b0b7d46fba49ebcff4280c6')
     # ,
   #   :body => {
   #     :messages => 
   #     # 'Hello'
   #   }
     }
   )
  end
  puts response
end

post_moodle

# First try
# Davids-MacBook-Pro:code davidcox$ ruby httparty_post_moodle.rb 
# {"EXCEPTION"=>{"ERRORCODE"=>"invalidtoken", "MESSAGE"=>"Invalid token - token not found", "class"=>"moodle_exception"}}

# Second try
# httparty_post_moodle.rb:4: syntax error, unexpected '{', expecting ')'
# httparty_post_moodle.rb:5: syntax error, unexpected ',', expecting keyword_end
# httparty_post_moodle.rb:9: syntax error, unexpected '}', expecting keyword_end
#    })

# Third Attempt
# Davids-MacBook-Pro:code davidcox$ ruby httparty_post_moodle.rb 
# httparty_post_moodle.rb:4: syntax error, unexpected '{', expecting ')'
# httparty_post_moodle.rb:5: syntax error, unexpected ',', expecting keyword_end
# httparty_post_moodle.rb:9: syntax error, unexpected '}'

# Fourth Attempt
# Davids-MacBook-Pro:code davidcox$ ruby httparty_post_moodle.rb 
# httparty_post_moodle.rb:5: syntax error, unexpected =>, expecting '}'
#      :query => query_hash('core_message_sen...
#               ^
# httparty_post_moodle.rb:5: syntax error, unexpected ',', expecting '}'
# httparty_post_moodle.rb:14: syntax error, unexpected keyword_end, expecting '}'

# Fifth Attempt
# Davids-MacBook-Pro:code davidcox$ ruby httparty_post_moodle.rb 
# httparty_post_moodle.rb:5: syntax error, unexpected =>, expecting '}'
#      :query => query_hash('core_message_sen...
#               ^
# httparty_post_moodle.rb:12: syntax error, unexpected ')', expecting keyword_end

