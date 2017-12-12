#!/usr/bin/env ruby

# 最初の数字はいらない
gets

nums = gets.chomp!.split.map(&:to_i)
puts "#{nums.min} #{nums.max} #{nums.inject(:+)}"
