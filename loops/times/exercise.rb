# frozen_string_literal: true

class Exercise
  # What is the sum of all the integers from 1 to 1000?
  # Output 500,500.
  def self.sum_of_all
    puts "Execution of #{name} in #{__method__}"

    count = 0
    number = 1000
    sum = 0
    number.times do
      count += 1
      sum += count
    end
    puts "What is the sum of all the integers from 1 to 1000? #{sum} "
  end

  # What is the sum of all the integers from 10 to 100?
  def self.sum_of_all_logical
    puts "Execution of #{name} in #{__method__}"
    number = 91 # Count of many number difference between the given number
    count = 10
    sum = 0

    number.times do
      sum += count
      count += 1
    end
    puts "What is the sum of all the integers from 10 to 100? #{count} = #{sum}"
  end

  # What is the sum of all the integers from 455 to 500?
  def self.sum_of_all_logical_2
    puts "Execution of #{name} in #{__method__}"
    number = 46
    count = 455
    sum = 0

    number.times do
      sum += count
      count += 1
    end

    puts "What is the sum of all the integers from 455 to 500? #{sum}"
  end

  # What is the sum of all the integers from 799 to 999?
  def self.sum_of_all_logical_3
    puts "Execution of #{name} in #{__method__}"
    number = (999 - 799) + 1
    count = 799
    sum = 0
    number.times do
      sum += count
      count += 1
    end
    puts "What is the sum of all the integers from 799 to 999? #{sum}"
  end

  # Print out all the lyrics to "99 bottles of beer on the wall".
  def self.print_lyrics
    suffix = 'of beer on the wall'
    number = 100
    count = 100
    number.times do
      count -= 1
      object = count <= 1 ? 'bottle' : 'bottles'
      puts "#{count} #{object} #{suffix}"
    end
  end

  # There is a song that goes like this:

  # On the first day of Christmas, my true love sent to me a partridge in a pear tree.
  # On the second day of Christmas, my true love sent to me two turtle doves and a partridge in a pear tree.
  # ...
  # If this goes on for the 12 days of Christmas. How many presents will your true love send you over Christmas?
  # (Hint: You will need a loop inside another).

  def self.christmas_lyrics
    number = 12
    count = 0
    sum = 0

    number.times do
      count += 1
      sum += count
    end
    puts "Gifts #{sum}"
  end
end

# Exercise.sum_of_all
# Exercise.sum_of_all_logical
# Exercise.sum_of_all_logical_2
# Exercise.sum_of_all_logical_3
# Exercise.print_lyrics
Exercise.christmas_lyrics
