require 'httparty'
require 'moodle_rb'
# require_relative 'moodle_rb-test-3'
require_relative 'grades_report_html'
require 'pry'

OUTPUT_PATH = ENV['HOME'] + "/code/grades"

class MoodleRequest
  include HTTParty
  base_uri 'http://localhost:8888/moodle29'

 def get_grades(*courses)
   grades = @moodle.grades.by_course(courses)[0]
 end


 def get_failures
  all_grades = get_grades(4)
  fails = []

  all_grades.each do |this_grade|
    if this_grade["str_long_grade"].to_f < 70.0
      fails<<this_grade
    end
  # class_data = @moodle.grades.by_course(4, [5,6,7,8,9,10,11])[0]
# binding.pry
  # begin
  #   FailedGradesReportHTML.write(class_data["grades"], OUTPUT_PATH + ".html")
  # rescue
  #   puts "Did not write HTML, sorry."
  # end
  id_array = []
  fails.each do |this_fail|
    id_array<<this_fail["user_id"]
  end

  send_messages("fail_email.haml", id_array, fails)

end

  def send_messages(template, id_array, msg_data)
    engine = Haml::Engine.new(File.read(template))
    id_array.each do |this_id|
      content = engine.render(Object.new, :data => msg_data)
      messages => {
        '0' => {
          :touserid => this_id, 
          :text => content = engine.render(Object.new, :orders => orders)}
      }
    # this is clearly a much better variable name. lol
    messages_i_want_to_send_to_moodle = {
     :body => {
        :wstoken => '140e55a43b0b7d46fba49ebcff4280c6',
        :wsfunction => 'core_message_send_instant_messages',
        :messages => {
          '0' => {
            :touserid => '6',
            :text => 'Completed, not passed.'
          },
          '1' => {
            :touserid => '7',
            :text => 'Completed, not passed.'
          }, 
          '2' => {
            :touserid => '8',
            :text => 'Completed, not passed.'
          },
          '3' => {
            :touserid => '10',
            :text => 'Completed, not passed.'
          }
        }
      }
    }

    puts self.class.post('/webservice/rest/server.php', messages_i_want_to_send_to_moodle)
  end
end

mr = MoodleRequest.new
mr.get_grades
mr.send_messages
