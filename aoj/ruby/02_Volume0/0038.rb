#!/usr/bin/env ruby

def straight?(s)
  return true if s.length == 5 && (s.max - s.min) == 4
  return true if [1,10,11,12,13] == s.sort
  false
end

while line = gets
  nums = Hash.new(0)
  hands = line.chomp!.split(?,).map(&:to_i)

  # 種類ごとの枚数を数える
  hands.each{ |h| nums[h] += 1 }

  one,two,three,four = 0,0,0,0
  nums.each do |k, v|
    one += 1 if v == 1
    two += 1 if v == 2
    three += 1 if v == 3
    four += 1 if v == 4
  end

  if four > 0
    puts "four card"
  elsif three == 1 && two == 1
    puts "full house"
  elsif straight?(nums.keys)
    puts "straight"
  elsif three == 1
    puts "three card"
  elsif two == 2
    puts "two pair"
  elsif two == 1
    puts "one pair"
  else
    puts "null"
  end

end
