#!/usr/bin/ruby
#
#
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age  = age
  end
end
puts "Please enter a list of names seperated by a comma"
  group = []
 # room = {}
  people = gets.chomp
  people_array = people.split(",")
people_array.each do |n|
  print "please provide the age for the provided name #{n.capitalize!}:"
    age = gets.chomp
  person = Person.new(n, age)
#room = {:name => n, :age  => age}
  group << person
end
sorted_group = group.sort do |a,b|
  a.age <=> b.age
end.reverse
sorted_group.each do |person|
  puts
    puts person.name + ":" + person.age
end
