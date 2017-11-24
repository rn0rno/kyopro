#!/usr/bin/env ruby
SIZE = 10
sheets = Array.new(SIZE * SIZE, 0)

def ok(x, y)
  0 <= x && x < SIZE && 0 <= y && y < SIZE
end

while line = gets
  x, y, s = line.chomp!.split(',').map(&:to_i)

  sheets[y * SIZE + x] += 1 if ok(x, y)

  sheets[(y-1) * SIZE + x] += 1 if ok(x, y-1)
  sheets[(y+1) * SIZE + x] += 1 if ok(x, y+1)
  sheets[y * SIZE + (x-1)] += 1 if ok(x-1, y)
  sheets[y * SIZE + (x+1)] += 1 if ok(x+1, y)
  if s > 1
    sheets[(y-1) * SIZE + (x-1)] += 1 if ok(x-1, y-1)
    sheets[(y+1) * SIZE + (x+1)] += 1 if ok(x+1, y+1)
    sheets[(y+1) * SIZE + (x-1)] += 1 if ok(x-1, y+1)
    sheets[(y-1) * SIZE + (x+1)] += 1 if ok(x+1, y-1)
  end
  if s > 2
    sheets[(y-2) * SIZE + x] += 1 if ok(x, y-2)
    sheets[(y+2) * SIZE + x] += 1 if ok(x, y+2)
    sheets[y * SIZE + (x-2)] += 1 if ok(x-2, y)
    sheets[y * SIZE + (x+2)] += 1 if ok(x+2, y)
  end
end

puts sheets.count(0)
puts sheets.max
