n, a, b = gets.chomp!.split(" ").map(&:to_i)

puts "#{[a, b].min} #{[n - ( a + b ), 0].min.abs}" 
