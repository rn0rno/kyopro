k = gets.chomp!.to_i

# @cache = {}
# def cache_gcd(l, m, n)
#   _value = a.gcd(b.gcd(c))
# end

sum = 0
1.upto(k).each do |a|
  1.upto(k).each do |b|
    d = a.gcd(b)
    1.upto(k).each do |c|
      sum += d.gcd(c)
    end
  end
end

puts sum
