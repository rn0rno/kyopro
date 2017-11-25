#!/usr/bin/env ruby
while line = gets
  input = line.chomp!.split(?,).map(&:to_i)

  l = input[0..9]
  va, vb = input[10..11].map(&:to_f)

  s = (va / (va+vb)) * l.inject(:+)
  k = 0
  10.times do |n|
    k += l[n]

    if s <= k
      puts (n+1)
      break
    end
  end
end
