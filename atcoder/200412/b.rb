n = gets.chomp!.to_i
sum = n * (n+1) / 2

k = [*1..n].select{ |i| (i % 3 == 0 || i % 5 == 0) }.inject(:+) || 0

puts sum - k
