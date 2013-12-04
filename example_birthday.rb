#!/usr/bin/ruby
#
#
require 'time'

puts "Please enter a list of names seperated by a comma"
  names = gets.chomp
  names_array = names.capitalize.split(",")
puts "Please enter the age of each person seperated by comma"
  ages = gets.chomp
  ages_array = ages.split(",")
  sorted_age = ages_array.sort.reverse
sorted_age.each do |age|
  original_age_index = ages_array.index(age) # e.g. 2 
  original_name_index = original_age_index   # this maps directly, so age index = 2, then name index also = 2
  puts names_array[original_name_index] + ":" + ages_array[original_age_index]
end
#names_array.each do |name|
#  puts name + ":" + age_array.shift 
#end

