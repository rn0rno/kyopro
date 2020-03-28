coffee = gets.chomp!.split('')

if coffee[2] == coffee[3] && coffee[4] == coffee[5]
  puts 'Yes'
else
  puts 'No'
end
