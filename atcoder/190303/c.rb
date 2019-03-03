S = gets.chomp!

s_zero = S.count('0')
s_one = S.count('1')

puts [s_zero, s_one].min * 2
