#!/usr/bin/env ruby

# エラトステネスの篩テーブルの準備
eratos = []
1.upto(999_999){ |n| eratos[n] = 1 }
eratos[1] = 0

1.upto(999_999) do |n|
  next if eratos[n] == 0
  tmp = n * 2
  while tmp < 1_000_000
    eratos[tmp] = 0
    tmp += n
  end
end

while line = gets
  n=line.chomp!.to_i
  puts eratos[1..n].reduce(:+)
end
