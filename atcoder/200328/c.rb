k, n = gets.chomp!.split(" ").map(&:to_i)
a = gets.chomp!.split(" ").map(&:to_i)


aa = a.map.with_index do |at, i|
  if i != (n - 1)
    a[i + 1] - at
  else
    k - a[i] + a[0]
  end
end


puts k - aa.max
