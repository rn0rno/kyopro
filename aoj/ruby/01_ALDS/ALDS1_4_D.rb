#!/usr/bin/env ruby


# 連続しなければこれでいいけど連続する必要があるためこれではダメ
# n, k = gets.split.map(&:to_i)
#
# baggages = []
# trucks = []
# k.times { trucks << 0 }
# n.times { baggages << gets.to_i }
# 
# baggages.sort { |a, b| b <=> a }.each do |baggage|
#   trucks << trucks.sort!.shift + baggage
# end
#
# puts trucks
