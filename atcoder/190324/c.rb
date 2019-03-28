n, q = gets.chomp!.split(" ").map(&:to_i)
s = gets.chomp!

k = []
kk = s.split('').map.with_index { |e,i| e == 'A' ? i : nil }.compact
kk.each do |i|
  k << i if s[i+1] == 'C'
end

q.times do
  l, r = gets.chomp!.split(" ").map(&:to_i)
  puts k.select{ |_k| _k >= l - 1 && _k <= r - 2 }.size
end
