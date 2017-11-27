#!/usr/bin/env ruby
require 'set'

N = 50_000 # 探索する素数の上限
elt = Array.new(N, 1)
primes = []

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

# #include?の高速化
primes = primes.to_set

while line = gets
  n = line.chomp!.to_i
  n2 = n/2
  break if n.zero?

  cnt = 0
  primes.each do |pr|
    break if pr > n2
    cnt += 1 if primes.include?(n-pr)
  end
  puts cnt
end

## 参考
# Array#include?は遅い，TLEになる．
# Set#include?にしたほうが良い．
# http://murajun1978.hatenadiary.com/entry/2014/09/08/213505
