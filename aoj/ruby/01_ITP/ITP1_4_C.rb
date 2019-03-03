#!/usr/bin/env ruby

while line = gets
  args = line.chomp.split

  case args[1]
  when '+'
    puts args[0].to_i + args[2].to_i
  when '-'
    puts args[0].to_i - args[2].to_i
  when '*'
    puts args[0].to_i * args[2].to_i
  when '/'
    puts args[0].to_i / args[2].to_i
  when '?'
    break
  end

end
