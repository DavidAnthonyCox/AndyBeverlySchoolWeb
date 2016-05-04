my_friends = ["Mike", "Troy", "Drew"]

puts "You currently have #{my_friends} in your my_friends array. Add another name please."
 new_friend = gets.chomp

my_friends << new_friend

last_friend = "Adam"

puts "My top friends are #{my_friends.join(', ')}," << " and " << last_friend << " for a reason."

puts my_friends.insert(1, last_friend)