# frozen_string_literal: true

# https://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/loops.html
class Times
  def self.loop
    puts "Execution of #{__method__}"
    5.times do
      puts 'Hello Times'
    end
  end

  def self.counting
    puts "Execution of #{__method__}"
    count = 0
    5.times do
      count += 1
      puts "Hello Times #{count} "
    end
  end

  def self.sum_of_counts
    puts "Execution of #{__method__}"
    count = 0
    sum = 0
    5.times do
      count += 1
      sum += count
      puts "Sum at #{count} = #{sum}"
    end
  end

  def self.counting_backwards
    count = 5
    5.times do
      count -= 1
      puts "Minus= #{count}"
    end
  end

  # 6! = 6 x 5 x 4 x 3 x 2 x 1 = 720
  def self.factorial
    puts "Execution of #{__method__}"
    count = 0
    product = 1
    number = 6
    number.times do
      count += 1
      product *= count
    end

    puts "#{number}!= #{product}"
  end
end

Times.loop
Times.counting
Times.sum_of_counts
Times.counting_backwards
Times.factorial
