#!/usr/bin/ruby
#
#

puts "Please enter a list of names seperated by a comma"
  group = []
  room = {}
  people = gets.chomp
  people_array = people.split(",")
people_array.each do |n|
  print "please provide the age for the provided name #{n.capitalize!}:"
    age = gets.chomp
room = {:name => n, :age  => age}
group << room
end
sorted_group = group.sort do |a,b|
a[:age] <=> b[:age]
end.reverse
sorted_group.each do |room|
  puts
    puts "*#{room[:name]} (#{room[:age]} years old)"
end
