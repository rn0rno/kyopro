#!/usr/bin/env ruby

sum = 0

while line = gets
  stc = line.split('')
  ary = []

  # 1文字ずつチェックする
  stc.each do |chr|
    # 数字の場合はArrayに追加していく
    # 170 -> [1,7,0]のように格納されていく
    if chr =~ /^[0-9]+$/
      ary << chr.to_i
    else
      # 文字が入力された場合かつ数字が直前に書くのされている場合は数字を処理する
      # [1, 7, 0]を [0] 0-> [1]7-> [2]1という順番でとりだし， value * (10 ** index)を足し合わせることで複数桁の数字を復号している
      unless ary.length.zero?
        ary = ary.reverse
        (ary.length).times do |i|
          sum += ary[i] * (10 ** i)
        end
        ary = []
      end
    end
  end
end

puts sum
