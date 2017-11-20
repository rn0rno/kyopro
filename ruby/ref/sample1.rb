#!/usr/bin/env ruby

## 引数の表示
p ARGV

## 標準入力の待受

# 整数を受け付ける場合は.to_iをつける
while line = gets
  line.chomp! # delete \n
  print "line = #{line}\n"
end

# スペース区切り,to_iで複数待ち受ける場合
b,c=line.chomp!.split(" ").map(&:to_i)

## n回繰り返す
{n}.times { |count| hoge }
0.upto(n) { |count| hoge }
n.downto(0) { |count| hoge }

# 最大公約数
a.gcd(b)

# 最小公倍数
a.lcm(b)
