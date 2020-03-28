n, x, y = gets.chomp!.split(" ").map(&:to_i)

g = Array.new(n - 1, 0).map.with_index do |_, idx|
  tmp = n - idx - 1

  if (y - x - 2) > idx
    tmp += 1
  end

  if (y + idx) < n
    tmp += 1
  end

  tmp
end

puts g
