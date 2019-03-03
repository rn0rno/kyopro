#!/usr/env/bin ruby

while (r = gets.chomp.to_i) != 0
  sheet = []
  r.times do
    sheet << gets.chomp.split.map(&:to_i)
  end

  sheet.map{|e| e << e.inject(:+)}.transpose.map{|e| e << e.inject(:+)}.transpose.map{|e| puts e.map{|ee| ee.to_s.rjust(5) }.join}
end
