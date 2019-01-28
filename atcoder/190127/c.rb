n = gets.chomp!.to_i

takahashi = []
aoki = []
tokuten = []

n.times do |i|
  a, b = gets.chomp!.split(" ").map(&:to_i)
  takahashi << a
  aoki << -1 * b
  tokuten << { idx: i, point: a + b }
end

puts tokuten.sort { |a, b| b[:point] <=> a[:poinit] }.map.with_index { |k, idx| idx.even? ? takahashi[k[:idx]] : aoki[k[:idx]] }.inject(:+)
