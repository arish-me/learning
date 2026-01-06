# frozen_string_literal: true

class While
  def self.while
    count = 0
    while count < 10
      count += 1
      puts count
    end
  end

  def self.max_power_number(number = 1, max, product)
    count = 0
    while number < max
      count += 1
      number *= product
    end
    puts "#{product}^#{count} = #{number} is the highest power of #{product} and less than #{max}"
  end

  # def self.max_power_number
  #   number = 1
  #   number *= 2 while number < 124_123
  #   puts number
  # end
end

# While.while
While.max_power_number(1, 1e10, 2)
# While.max_power_number
