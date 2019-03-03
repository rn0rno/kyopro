#!/usr/bin/env ruby

def bomb(x, y)
  return if @field[x][y] != 1
  @field[x][y] = 0

  -3.upto(3) do |i|
    next if i.zero?
    bomb(x + i, y) if (x + i) >= 0 && (x + i) < 8
    bomb(x, y + i) if (y + i) >= 0 && (y + i) < 8
  end
end

n = gets.chomp!.to_i

# skip empty line
gets

n.times do |i|
  @field = []
  8.times do |r|
    @field[r] = gets.chomp!.split('').map(&:to_i)
  end

  bomb_x = gets.chomp!.to_i
  bomb_y = gets.chomp!.to_i

  # simulate bomb
  bomb(bomb_y - 1, bomb_x - 1)

  # output result
  puts "Data #{i + 1}:"
  8.times do |r|
    puts @field[r].join('')
  end

  # skip empty-line
  gets if i + 1 != n
end
