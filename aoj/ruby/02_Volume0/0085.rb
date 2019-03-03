#/usr/bin/env ruby

while (n, m = gets.chomp!.split.map(&:to_i)) != [0, 0]
  participants = (1..n).to_a

  out = 0
  while participants.length != 1
    out = (out + m - 1) % participants.length
    participants.delete_at(out)
  end
  puts participants.pop
end
