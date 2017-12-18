#!/usr/bin/env ruby
gets

nums = gets.chomp.split.map(&:to_i)

nums.length.times do |i|
  v = nums[i]
  j = i - 1
  while j >= 0 && nums[j] > v
    nums[j + 1] = nums[j]
    j -= 1
  end
  nums[j + 1] = v
  puts nums.join(' ')
end
