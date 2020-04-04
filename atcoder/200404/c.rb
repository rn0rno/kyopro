n, k = gets.chomp!.split(" ").map(&:to_i)

a = n / k
b = n - (k * a)
puts [b.abs, (b - k).abs].min
