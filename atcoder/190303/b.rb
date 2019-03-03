def divisable_number(x)
  1.upto(x).select{ |_x| (x % _x).zero? }
end

a, b, k = gets.chomp!.split(" ").map(&:to_i)

a_p = divisable_number(a)
b_p = divisable_number(b)

puts (a_p & b_p).reverse[k - 1]
