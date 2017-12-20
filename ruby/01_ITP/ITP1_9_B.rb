#!/usr/bin/env ruby

while (cards = gets.chomp) != '-'
  size = cards.length
  m = gets.chomp.to_i
  m.times do
    h = gets.chomp.to_i
    cards = cards[h, size] + cards[0..(h - 1)]
  end

  puts cards
end
