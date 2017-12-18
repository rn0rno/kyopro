#!/usr/bin/env ruby

n = gets.chomp!.to_i

debt = 100.to_f
1.upto(n) do
  debt += (debt*0.05)
  debt = debt.ceil
end

puts debt*1_000
