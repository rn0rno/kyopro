a, b, c = gets.chomp.split.map(&:to_i)

cnt = 0
a.upto(b) do |i|
  cnt += 1 if (c % i).zero?
end

puts cnt
