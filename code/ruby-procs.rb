people_one = [54, 21, 45, 12, 11, 32, 67, 5]

people_two = [21, 54, 65, 32, 65, 87, 21, 12]

over_thirty = Proc.new {|age| age > 30}

over_twenty_one = Proc.new {|age| age >= 21}

group_one = people_one.select(&over_thirty)

group_two = people_two.select(&over_twenty_one) 

puts group_one

puts group_two