# エラトステネスの篩で素数テーブルを生成する

## 各パラメータ
 - [elt] エラトステネスの篩
 - [primes] 素数が入っている配列
 - [N] 素数を探索する最大値

## メモ
 - `N=104_750`で素数の数が10001になる

## 使用例
 - `0009.rb`
 - `0044.rb`
 - `0053.rb`
 - `0056.rb`

## プログラム
```ruby
#!/usr/bin/env ruby
require 'set'

N = 104_750 # 探索する素数の上限
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
# そういう処理をしないときは消しても良いかも
primes = primes.to_set

```
