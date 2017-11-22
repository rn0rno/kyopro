#!/usr/bin/env ruby

n = gets.chomp!.to_s
puts (1..n).reduce(:*)
