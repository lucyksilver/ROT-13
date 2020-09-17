require_relative 'rot-13.rb'

puts 'Hello and welcome!'

answer = nil

until answer == "n"
  puts 'Please enter a word or phrase'
  print "> "
  message = gets.chomp
  puts 'Please enter a number between 1 and 25'
  print "> "
  number = gets.chomp.to_i
  if number > 25
    puts 'Try again! Your number must be between 1 and 25'
    print "> "
    number = gets.chomp.to_i
  end
  answer = number_mix(message, number)
  puts "Your newly jazzed up phrase is #{answer}, would you like to play again? Y / N"
  answer = gets.chomp.downcase
end

puts "Thank you, goodbye!"
