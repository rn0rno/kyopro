#!/usr/bin/env ruby

word_counts = Hash.new(0)
max = ""
words = gets.chomp.split(nil)
words.each do |word|
  word_counts[word] += 1

  max = word if (word.length > max.length)
end
puts "#{word_counts.max{|a,b|a[1]<=>b[1]}[0]} #{max}"


# 参考
# https://qiita.com/torshinor/items/83d0c3fc91a57aef7ced
