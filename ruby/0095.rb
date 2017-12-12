#!/usr/bin/env ruby

n = gets.to_i

avs = []
n.times do
  avs << gets.chomp.split.map(&:to_i)
end

avs.sort! { |a, b| a[0] <=> b[0] }

max = -1
winner = []
avs.each do |av|
  if max < av[1]
    max = av[1]
    winner = av
  end
end


puts winner.join(' ')
