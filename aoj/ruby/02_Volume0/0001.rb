#!/usr/bin/env ruby

# Input
mountains = []
while line = gets
  mountains << line.chomp!.to_i # delete \n
end

# Sort & Output
mountains.sort!
3.times{ puts mountains.pop }
