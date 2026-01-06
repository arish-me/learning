# frozen_string_literal: true

# Conditional Statements
class Conditionals
  def self.fare_finder
    puts 'Please tell me your age, I will tell which Beer are you allowed to drink: '
    age = gets.chomp.to_i

    if age >= 21
      puts 'Kingfisher'
    elsif age >= 18
      puts 'Heineken'
    elsif age >= 16
      puts 'Corona'
    elsif age >= 10
      puts 'RedBull'
    else
      puts 'No you are not allowed Get out!'
    end
  end

  # Re-arrange these characters in ASCIIbetical order:
  def self.rearray_ascii
    input = '2, u, A, 4, w, f, R, y'
    puts input.split(',').map(&:strip).sort
  end

  # Using your experience the previous question, make a program that accepts a character input and tells you if the character lines:
  # Before 0.
  # After 9 but before A.
  # After Z but before a.
  # After z.

  def self.find_character(element = '$, +, ?, <, -, ~, :, %, ^, {, ['.split(',').map(&:strip))
    puts "Please enter a character: #{element}"
    # input = gets.chomp
    element.each do |ele|
      if ele < '0'
        puts 'The character lies before 0.'

      elsif ele > '9' && ele < 'A'
        puts 'The character lies after 9 but before A.'

      elsif ele > 'Z' && ele < 'a'
        puts 'The character lies after Z but before a.'

      elsif ele > 'z'
        puts 'The character lies after z.'

      else
        puts 'The character does not lie in any of the specified ranges.'
      end
    end
  end
end

# Conditionals.fare_finder
# Conditionals.rearray_ascii

Conditionals.find_character
