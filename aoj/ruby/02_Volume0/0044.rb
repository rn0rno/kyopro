#!/usr/bin/env ruby

N = 60_000 # 探索する素数の上限
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

while line = gets
  n = line.chomp!.to_i
  (primes.length).times do |j|
    if n == primes[j]
      puts "#{primes[j-1]} #{primes[j+1]}"
      break
    elsif n > primes[j] && n < primes[j+1]
      puts "#{primes[j]} #{primes[j+1]}"
      break
    end
  end
end
