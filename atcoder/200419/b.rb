n, m = gets.chomp!.split(" ").map(&:to_i)
a = gets.chomp!.split(" ").map(&:to_i).inject(:+)

if n < a
  puts '-1'
else
  puts n - a
end
