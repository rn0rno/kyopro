n, m = gets.chomp!.split(" ").map(&:to_i)
a = gets.chomp!.split(" ").map(&:to_i)

if a.sort.reverse[m - 1] < (a.inject(:+) / (4.0 * m))
  puts "No"
else
  puts "Yes"
end
