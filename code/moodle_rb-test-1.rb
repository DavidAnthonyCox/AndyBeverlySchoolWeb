require 'moodle_rb'
require_relative 'grades_report_html'
require 'pry'

OUTPUT_PATH = ENV['HOME'] + "/code/grades"

@admin_token = 'c3446050a490b36dc1f45e7aaaefa3d1'
@web_services_token = '140e55a43b0b7d46fba49ebcff4280c6'
@moodle = MoodleRb.new(@web_services_token, 'http://localhost:8888/moodle29/')


def course_index_report

  # Davids-MacBook-Pro:code davidcox$ ruby moodle_rb-test-1.rb 
  # moodle_rb-test-1.rb:9:in `course_index_report': undefined local variable or method `moodle' for main:Object (NameError)
  #   from moodle_rb-test-1.rb:47:in `<main>'
  @moodle.courses.index.each do |c|
    puts "Course: " + c["shortname"] + " id: " + c["id"].to_s
  end
end
  
def users_report
  users = @moodle.courses.enrolled_users(1)

# puts users

# # puts users.first["firstname"]

 users.each do |this_user| 
   puts this_user["firstname"] + " " + this_user["lastname"] + " " + this_user["email"]
 end 
end
# puts moodle.users.enrolled_courses(5)

def courses_report
  courses = @moodle.users.enrolled_courses(5)

  courses.each do |this_course|
    puts "Course name: " + this_course["fullname"]
  end
end
# puts moodle.grades.by_course(4, 5)

# grades_report = 

def grades_report
  class_data = @moodle.grades.by_course(4, [5,6,7,8,9,10,11])[0]
  # binding.pry
  begin
    GradesReportHTML.write(class_data["grades"], OUTPUT_PATH + ".html")
  rescue
    puts "Did not write HTML, sorry."
  end
  # puts "Quiz Name: " + class_data["name"]
  # puts "User ID: " + class_data["grades"][0]["userid"].to_s
  # puts "Grade: " + class_data["grades"][0]["str_long_grade"]
end

# course_index_report
# users_report
# courses_report
grades_report



# grades_report.each do |this_grade|
#   puts this_grade["userid"]
  # "User ID: " +  
  # + "Quiz Name: " + this_grade["name"] + "Grade: " + this_grade["str_long_grade"]
# end

# 100.times do |count|

#   grades = moodle.grades.by_assignment([count])

#   puts grades.count
#   puts grades.class
#   puts grades
#   puts "Count is: " + count.to_s

# end

# puts moodle.users.show(1)

# # puts moodle.site_info

# """

# {"activityid"=>"course", "itemnumber"=>0, "scaleid"=>0, 
#   "name"=>"Course total", "grademin"=>0, "grademax"=>100, 
#   "gradepass"=>0, "locked"=>0, "hidden"=>0, 
#   "grades"=>[
#     {"userid"=>5, "grade"=>100, "locked"=>0, "hidden"=>0, 
#       "overridden"=>0, "feedback"=>nil, "feedbackformat"=>0, 
#       "usermodified"=>nil, "datesubmitted"=>nil, 
#       "dategraded"=>1443118692, "str_grade"=>"100.00", 
#       "str_long_grade"=>"100.00 / 100.00", "str_feedback"=>""}
#       ]
#     }
# {"activityid"=>"13", "itemnumber"=>0, "scaleid"=>0, 
#   "name"=>"Basic Insurance Quiz", "grademin"=>0, 
#   "grademax"=>10, "gradepass"=>10, "locked"=>0, "hidden"=>0, 
#   "grades"=>[
#     {"userid"=>5, "grade"=>10, "locked"=>0, "hidden"=>0, 
#       "overridden"=>0, "feedback"=>nil, "feedbackformat"=>0, 
#       "usermodified"=>5, "datesubmitted"=>1443118692, 
#       "dategraded"=>1443118692, "str_grade"=>"10.00", 
#       "str_long_grade"=>"10.00 / 10.00", "str_feedback"=>""}
#       ]
#     }

# """