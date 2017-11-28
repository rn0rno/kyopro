#!/usr/bin/env ruby

while line = gets
  cards = Hash.new(1)
  (1..10).each{ |num| cards[num] = 1}

  hA, hB, a = line.chomp!.split.map(&:to_i)
  cards[hA], cards[hB], cards[a] = 0, 0, 0

  myHands = hA + hB
  remain = 20 - myHands

  sum = 0
  bestCard = cards.select{|k,v| v==1 && k <= remain}.length
  puts bestCard > 3 ? "YES" : "NO"

end
