# 2019-01-20 21:25:11
# AC
n = gets.chomp!.to_i
h = gets.chomp!.split(" ").map(&:to_i)

cnt = h.last

1.upto(n - 1) do |hh|
  cnt += (h[hh - 1] - h[hh]) if h[hh - 1] > h[hh]
end

puts cnt
