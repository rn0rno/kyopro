# ユークリッドの互除法

参考)http://judge.u-aizu.ac.jp/onlinejudge/commentary.jsp?id=ALDS1_1_B
rubyでは最大公約数をInteger#gcdで解ける．
万が一のためにユークリッドの互除法における最大公約数の求め方をメモ

```ruby
  a.gcd(b)
```

## 定理
`x <= y`のとき，`gcd(x, y)`と`gcd(x, y%x)`は等しい

## 例
gcd(54, 20)
= gcd(20, 34)
= gcd(14, 20)
= gcd( 6, 14)
= gcd( 2,  6)
= gcd( 0,  2)
= 2

`gcd(0, b)`となったときの`b`が最大公約数となる．
また，計算量を削減するために少し工夫も可能．

## プログラム

純粋な解法
```ruby
a, b = gets.split.map(&:to_i)
a, b = b, a if b < a

a, b = b % a, a while 0 < a
puts b
```

少し工夫
```ruby
a, b = gets.split.map(&:to_i)
a, b = b, a if b < a

# a==1のとき，次でb%a==0となり，最大公約数が1となるのは自明であるためカット可能
a, b = b % a, a while 1 < a
puts (a == 1 ? 1 : b)
```
