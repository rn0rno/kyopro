#!/usr/bin/env ruby

ar = gets.chomp!.split(" ").map(&:to_i)
puts ar.sort!.reverse!.join(' ')
