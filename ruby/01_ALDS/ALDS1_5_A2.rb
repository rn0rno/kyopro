gets
A = gets.split(' ').map(&:to_i)
gets
M = gets.split(' ').map(&:to_i)

ans = [0]

A.each do |a|
  temp = ans.dup
  temp.each do |k, v|
    ans << k + a
  end
end

M.map do |m|
  puts "#{ans.include?(m) ? 'yes' : 'no'}"
end
