#!/usr/bin/env ruby

def func(x)
  x**2
end

@x = 600

while line = gets
  d = line.chomp!.to_i
  a = 0

  (@x/d).times do |k|
    a += func(d*k)
  end

  puts a * d
end
