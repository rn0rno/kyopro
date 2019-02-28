n = gets.chomp!.to_i

jpy = 0
btc = 0

n.times do
  x, n = gets.chomp!.split(" ")
  if n == 'JPY'
    jpy += x.to_i
  else
    btc += x.to_f
  end
end
puts jpy + btc * 380_000
