n, m = gets.chomp.split.map(&:to_i)

a = []
n.times do
  a << gets.chomp.split.map(&:to_i)
end

b = []
m.times do
  b << gets.to_i
end

a.each do |_a|
  puts _a.zip(b).map{ |f, s| f * s }.inject(:+)
end
