k = gets.chomp!.to_i

def cnt(n)
  8 * (3 ** (n - 1)) + 2 ** (n - 1)
end

n = 1
s = 0
loop do
  s += cnt(n)
  puts "n: #{n}, cnt(n): #{cnt(n)}"
  break if s > k
  n += 1
end

kk = k - cnt(n-1)
puts "#{n}桁の#{kk}こ目を出す"
