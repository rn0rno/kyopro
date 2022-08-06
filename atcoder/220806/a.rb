i = gets.split(" ").map(&:to_i)
i.sort!

if ((i[0] == i[1]) && (i[2] == i[3] && i[2] == i[4]) || (i[0] == i[1] && i[0] == i[2])) && (i[3] == i[4]) && i[0] != i[4]
  puts 'Yes'
else
  puts 'No'
end