#!/usr/bin/env ruby

while (h, w = gets.chomp.split.map(&:to_i)) != [0, 0]
  maps = []
  h.times do
    maps << gets.chomp.split('')
  end

  x = 0
  y = 0
  while maps[y][x] != '.' && maps[y][x] != 'x'
    k = maps[y][x]
    maps[y][x] = 'x'
    case k
    when '>'
      x += 1
    when '<'
      x -= 1
    when '^'
      y -= 1
    when 'v'
      y += 1
    end
  end

  if maps[y][x] == '.'
    puts "#{x} #{y}"
  else
    puts 'LOOP'
  end
end
