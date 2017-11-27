#!/usr/bin/env ruby

N = 104_750 # 探索する素数の上限
elt = Array.new(N, 1) # エラトステネスの篩テーブル
primes = [] # 素数を格納する


# エラトステネスの篩
elt[0] = 0
elt[1] = 0

N.times do |i|
  next if elt[i].zero?
  primes << i
  k = i * 2
  while k < N
    elt[k] = 0
    k += i
  end
end

while (n = gets.to_i) != 0
  puts (1..n).map{|e| primes[e-1]}.reduce(:+)
end
