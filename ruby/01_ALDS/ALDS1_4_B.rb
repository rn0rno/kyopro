#!/usr/bin/env ruby
require 'set'

line = STDIN.read.split("\n")
n = line[0].to_i
dict = Set.new

(1..n).each do |i|
  action, str = line[i].split
  str = str.tr('ACTG', '1234').to_i
  if action == 'insert'
    dict << str
  else
    puts dict.include?(str) ? 'yes' : 'no'
  end
end
