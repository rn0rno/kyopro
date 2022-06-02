n, x = gets.split(" ").map(&:to_i)
s = gets.chomp.split('')

s.each do |c|
  case c
  when 'U'
    x = x >> 1
  when 'R'
    x = x << 1
  when 'L'
    x = x << 1 + 1
  end
end

puts x