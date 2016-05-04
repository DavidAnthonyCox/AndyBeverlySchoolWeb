require 'moodle_rb'


#  touserid
#     text
#     textformat


# formats… FORMAT_HTML, FORMAT_MOODLE, FORMAT_PLAIN, FORMAT_MARKDOWN

# todo: initialize this the way the moodle_rb gem does, passing the tokena nd MoodleRB instances in where necessary.
def send_messages(token, params)
 response = MoodleRB::Users.post(
   '/webservice/rest/server.php',
   {
     :query => query_hash('core_message_send_instant_messages', token),
     :body => {
       # # :messages => api_array(params)
       # :messages => params
     }
   }
 )
 if error_response?(response)
   raise MoodleError.new(response.parsed_response)
 else
   response.parsed_response.first
 end
end


