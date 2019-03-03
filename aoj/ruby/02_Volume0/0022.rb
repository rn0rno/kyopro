#!/usr/bin/env ruby

while n = gets.to_i
  # 終了判定
  break if n.zero?

  # 入力から数字の配列を作成
  ar = []
  n.times { ar << gets.to_i }

  len = ar.length
  total = []

  # 尺取法
  len.times do |offset|
    tmp = 0
    (len - offset).times do |n|
      tmp += ar[offset+n]
      total << tmp
    end
  end

  puts total.max
end
