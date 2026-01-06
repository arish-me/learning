# frozen_string_literal: true

require 'date'
class GettingUserInput
  def self.user_input
    puts "Execution of #{name} in #{__method__}"

    puts "What's your name: "
    name = gets

    puts "Hello #{name.chomp}, How are you!"
  end

  def self.user_info
    puts "What's your name?"
    name = gets
    puts "What's your age?"
    age = gets
    puts "#{name.chomp} is #{age.chomp} years old"
  end

  # Write a program that will take two words and print them in opposite order.
  def self.opposite_order
    puts 'Enter first word:'
    word1 = gets.chomp

    puts 'Enter second word:'
    word2 = gets.chomp

    puts word2
    puts word1
  end

  # Write a program that asks for a number and a sentence and prints the sentence backwards that many times. It should:
  def self.backwards_input
    puts 'Type a sentence: '
    sentance = gets

    puts 'Type a Number: '
    number = gets

    number.to_i.times do
      puts sentance.reverse.chomp
    end
  end

  # What do you think this line does?:
  # number  = gets.chomp.to_i
  def self.try_out_integer_chomp
    number = gets.chomp.to_i
    puts number
  end

  # Write a program that behaves like this:
  def self.calculate_info
    puts "What's your name?"
    name = gets
    puts "What's your age?"
    age = gets
    puts "#{name.chomp} was born in #{Date.today.year - age.chomp.to_i}"
  end

  def self.factorial
    puts 'Please enter a number to calculate factorial: '
    number = gets.chomp.to_i
    count = 0
    product = 1
    number.times do
      count += 1
      product *= count
    end
    puts "#{number}!= #{product}"
  end
end

# GettingUserInput.user_input
# GettingUserInput.user_info
# GettingUserInput.calculate_info
# GettingUserInput.opposite_order
# GettingUserInput.backwards_input
# GettingUserInput.try_out_integer_chomp

GettingUserInput.factorial
