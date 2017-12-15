i = gets.to_i

cards = {}

[:S, :H, :C, :D].each do |s|
  cards[s] = {}
  1.upto(13).each{ |i| cards[s][i] = 0 }
end

i.times do
  s, n = gets.chomp.split
  cards[s.to_sym][n.to_i] = 1
end

[:S, :H, :C, :D].each do |s|
  cards[s].select! { |_s, _n| _n.zero? }
  cards[s].each_key { |k| puts "#{s} #{k}"}
end
