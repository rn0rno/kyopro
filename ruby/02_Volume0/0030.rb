#!/usr/bin/env ruby

def fc(s, n, min, remain)
  # 終了条件
  return 0 if n.zero? && !remain.zero?
  return 1 if n.zero? && remain.zero?

  # 枝刈り
  return 0 if min > remain

  # 続きがある場合
  sum = 0
  (min+1).upto(9) do |k|
    sum += fc(s, n-1, k, remain - k) unless remain - k < 0
  end

  sum
end

while line = gets
  n, s = line.chomp!.split(' ').map(&:to_i)
  break if n.zero? && s.zero?
  puts fc(s, n, -1, s)

end
