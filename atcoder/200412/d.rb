n = gets.chomp!.to_i
s = gets.chomp!.split('')

cnt = s.count('R') * s.count('G') * s.count('B')

0.upto(n).each do |i|
  (1..).each do |j|
    break if i + 2 * j >= n
    cnt -= 1 if s[i] != s[i + j] && s[i] != s[i + 2 * j] && s[i + j] != s[i + 2 * j]
  end
end

puts cnt
