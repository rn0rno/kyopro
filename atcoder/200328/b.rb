money = gets.chomp!.to_i

gohyaku = 0
while money >= 500
  gohyaku += 1
  money -= 500
end

go = 0
while money >= 5
  go += 1
  money -= 5
end

puts gohyaku*1000 + go*5
