#!/usr/bin/env ruby

dic = {}
while line = gets
  s, n = line.chomp.split
  if dic[s.to_sym]
    dic[s.to_sym] << n.to_i
  else
    dic[s.to_sym] = [n.to_i]
  end
end

dic.sort.each do |k, v|
  puts k
  puts v.sort.join(' ')
end
