#!/usr/bin/env ruby

gets
s = gets.chomp.split.map(&:to_i)
gets
t = gets.chomp.split.map(&:to_i)

puts (s & t).size
