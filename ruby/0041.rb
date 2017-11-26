#!/usr/bin/env ruby

k = 0
loop do
  k += 1
  w = gets.chomp!.to_i
  break if w.zero?

  n = gets.chomp!.to_i

  things = []
  dyn = Array.new(w+1, -1)

  n.times do
    things << gets.chomp!.split(?,).map(&:to_i)
  end

  ## 動的計画法
  # 初期化
  dyn[0] = 0
  # 処理
  things.each do |e|
    w.downto(0) do |i|
      next if dyn[i] < 0
      next if i+e[1] > w
      dyn[i+e[1]] =  dyn[i] + e[0] if dyn[i+e[1]] < dyn[i] + e[0]
    end
  end

  max = dyn.max

  (w+1).times do |i|
    if dyn[i] == max
      puts "Case #{k}:"
      puts max
      puts i
      break
    end
  end
end
