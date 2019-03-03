#!/usr/bin/env ruby

str = gets.chomp

puts (str * 2).include?(gets.chomp) ? 'Yes' : 'No'
