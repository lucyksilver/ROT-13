require_relative 'rot-13.rb'

puts 'Hello and welcome, please enter a sentence'
message = gets.chomp
puts 'Please enter a number'
number = gets.chomp.to_i
answer = number_mix(message, number)
puts "Your new sentence is #{answer}"
