# frozen_string_literal: true

# Two Sum Leet code
class TwoSum
  def self.two_sum(nums = [3, 2, 4], target = 6)
    steps = {}

    nums.each_with_index do |num, index|
      needed = target - num

      return [steps[needed], index] if steps.key?(needed)

      steps[num] = index
    end
  end
end

test_cases = [
  { nums: [2, 7, 11, 15], target: 9 },
  { nums: [3, 2, 4], target: 6 },
  { nums: [3, 3], target: 6 }
]

test_cases.each do |test|
  result = TwoSum.two_sum(test[:nums], test[:target])
  puts "nums=#{test[:nums]} target=#{test[:target]} => #{result.inspect}"
end

# | Step | num | needed | steps before | Match? |
# | ---- | --- | ------ | ------------ | ------ |
# | 1    | 3   | 3      | {}           | ❌      |
# | 2    | 2   | 4      | {3}          | ❌      |
# | 3    | 4   | 2      | {3,2}        | ✅      |
