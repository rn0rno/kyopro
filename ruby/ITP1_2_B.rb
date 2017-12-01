#!/usr/bin/env ruby
nums = gets.chomp!.split(" ").map(&:to_i)

puts (nums.uniq.sort == nums) ? 'Yes' : 'No'
