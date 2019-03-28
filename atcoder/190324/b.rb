str = gets.chomp!.split('')

x = 0
tmp = 0
str.each do |c|
  if 'ATGC'.include?(c)
    tmp += 1
  else
    if x < tmp
      x = tmp
    end
    tmp = 0
  end
end

if x < tmp
  x = tmp
end

puts x
