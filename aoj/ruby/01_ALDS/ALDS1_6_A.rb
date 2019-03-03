#!/usr/bin/env ruby

def countingSort(a)
  k = a.max + 1
  b = []
  c = Hash.new(0)

  a.each do |aa|
    c[aa] += 1
  end

  c.sort.each do |k, j|
    j.times { b << k }
  end

  b
end

gets
a = gets.split.map(&:to_i)

puts countingSort(a).join(' ')
