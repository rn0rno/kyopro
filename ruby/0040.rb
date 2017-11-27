#!/usr/bin/env ruby

n = gets.chomp!.to_i

alp = (?a..?z).map(&:to_sym).to_a
num = (1..26).to_a
hash = hash = alp.zip(num).to_h
puts hash

n.times do
  sentences = gets.chomp!
  words = sentences.split(' ')
  four_words = words.select{|w| w.length == 4}

  puts words.join(',')
  puts four_words.join(',')

  # 要回答
end
