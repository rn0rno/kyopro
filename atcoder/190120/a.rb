# 2019-01-20 21:03:21
# AC
number = gets.chomp!.split(" ").map(&:to_i)
number.sort!

puts number[0] * number[1] / 2
