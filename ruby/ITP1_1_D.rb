#!/usr/bin/env ruby
time = Time.at(gets.chomp!.to_i)
h = time.utc.strftime("%H").to_i
m = time.utc.strftime("%M").to_i
s = time.utc.strftime("%S").to_i
puts "#{h}:#{m}:#{s}"
