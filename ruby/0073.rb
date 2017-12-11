#!/usr/bin/env ruby

while (t, h, s = gets.split.map(&:to_i)) != [-1, -1, -1]
  remain = 2 * 3600 - (t * 3600 + h * 60 + s)

  nt = format('%02i', remain/3600)
  nh = format('%02i', (remain%3600)/60)
  ns = format('%02i', remain%60)
  remain *= 3
  tt = format('%02i', remain/3600)
  th = format('%02i', (remain%3600)/60)
  ts = format('%02i', remain%60)
  puts "#{nt}:#{nh}:#{ns}"
  puts "#{tt}:#{th}:#{ts}"
end
