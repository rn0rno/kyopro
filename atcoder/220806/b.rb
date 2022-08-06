n = gets.chomp!.to_i
P = gets.split(" ").map(&:to_i)

k = P[n-2]
ans = 1
while k != 1
  k = P[k-2]
  ans += 1
end

puts ans